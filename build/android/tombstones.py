#!/usr/bin/env python
#
# Copyright 2013 The Chromium Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.
#
# Find the most recent tombstone file(s) on all connected devices
# and prints their stacks.
#
# Assumes tombstone file was created with current symbols.

import datetime
import multiprocessing
import os
import subprocess
import sys
import optparse

from pylib import android_commands
from pylib.device import device_utils


def _ListTombstones(device):
  """List the tombstone files on the device.

  Args:
    device: An instance of DeviceUtils.

  Yields:
    Tuples of (tombstone filename, date time of file on device).
  """
  lines = device.RunShellCommand('TZ=UTC su -c ls -a -l /data/tombstones')
  for line in lines:
    if 'tombstone' in line and not 'No such file or directory' in line:
      details = line.split()
      t = datetime.datetime.strptime(details[-3] + ' ' + details[-2],
                                     '%Y-%m-%d %H:%M')
      yield details[-1], t


def _GetDeviceDateTime(device):
  """Determine the date time on the device.

  Args:
    device: An instance of DeviceUtils.

  Returns:
    A datetime instance.
  """
  device_now_string = device.RunShellCommand('TZ=UTC date')
  return datetime.datetime.strptime(
      device_now_string[0], '%a %b %d %H:%M:%S %Z %Y')


def _GetTombstoneData(device, tombstone_file):
  """Retrieve the tombstone data from the device

  Args:
    device: An instance of DeviceUtils.
    tombstone_file: the tombstone to retrieve

  Returns:
    A list of lines
  """
  return device.ReadFile('/data/tombstones/' + tombstone_file, as_root=True)


def _EraseTombstone(device, tombstone_file):
  """Deletes a tombstone from the device.

  Args:
    device: An instance of DeviceUtils.
    tombstone_file: the tombstone to delete.
  """
  return device.RunShellCommand(
      'rm /data/tombstones/' + tombstone_file, as_root=True)


def _ResolveSymbols(tombstone_data, include_stack):
  """Run the stack tool for given tombstone input.

  Args:
    tombstone_data: a list of strings of tombstone data.
    include_stack: boolean whether to include stack data in output.

  Yields:
    A string for each line of resolved stack output.
  """
  stack_tool = os.path.join(os.path.dirname(__file__), '..', '..',
                            'third_party', 'android_platform', 'development',
                            'scripts', 'stack')
  proc = subprocess.Popen(stack_tool, stdin=subprocess.PIPE,
                          stdout=subprocess.PIPE)
  output = proc.communicate(input='\n'.join(tombstone_data))[0]
  for line in output.split('\n'):
    if not include_stack and 'Stack Data:' in line:
      break
    yield line


def _ResolveTombstone(tombstone):
  lines = []
  lines += [tombstone['file'] + ' created on ' + str(tombstone['time']) +
            ', about this long ago: ' +
            (str(tombstone['device_now'] - tombstone['time']) +
            ' Device: ' + tombstone['serial'])]
  print '\n'.join(lines)
  print 'Resolving...'
  lines += _ResolveSymbols(tombstone['data'], tombstone['stack'])
  return lines


def _ResolveTombstones(jobs, tombstones):
  """Resolve a list of tombstones.

  Args:
    jobs: the number of jobs to use with multiprocess.
    tombstones: a list of tombstones.
  """
  if not tombstones:
    print 'No device attached?  Or no tombstones?'
    return
  if len(tombstones) == 1:
    data = _ResolveTombstone(tombstones[0])
  else:
    pool = multiprocessing.Pool(processes=jobs)
    data = pool.map(_ResolveTombstone, tombstones)
    data = ['\n'.join(d) for d in data]
  print '\n'.join(data)


def _GetTombstonesForDevice(device, options):
  """Returns a list of tombstones on a given device.

  Args:
    device: An instance of DeviceUtils.
    options: command line arguments from OptParse
  """
  ret = []
  all_tombstones = list(_ListTombstones(device))
  if not all_tombstones:
    print 'No device attached?  Or no tombstones?'
    return ret

  # Sort the tombstones in date order, descending
  all_tombstones.sort(cmp=lambda a, b: cmp(b[1], a[1]))

  # Only resolve the most recent unless --all-tombstones given.
  tombstones = all_tombstones if options.all_tombstones else [all_tombstones[0]]

  device_now = _GetDeviceDateTime(device)
  for tombstone_file, tombstone_time in tombstones:
    ret += [{'serial': device.old_interface.Adb().GetSerialNumber(),
             'device_now': device_now,
             'time': tombstone_time,
             'file': tombstone_file,
             'stack': options.stack,
             'data': _GetTombstoneData(device, tombstone_file)}]

  # Erase all the tombstones if desired.
  if options.wipe_tombstones:
    for tombstone_file, _ in all_tombstones:
      _EraseTombstone(device, tombstone_file)

  return ret

def main():
  parser = optparse.OptionParser()
  parser.add_option('--device',
                    help='The serial number of the device. If not specified '
                         'will use all devices.')
  parser.add_option('-a', '--all-tombstones', action='store_true',
                    help="""Resolve symbols for all tombstones, rather than just
                         the most recent""")
  parser.add_option('-s', '--stack', action='store_true',
                    help='Also include symbols for stack data')
  parser.add_option('-w', '--wipe-tombstones', action='store_true',
                    help='Erase all tombstones from device after processing')
  parser.add_option('-j', '--jobs', type='int',
                    default=4,
                    help='Number of jobs to use when processing multiple '
                         'crash stacks.')
  options, _ = parser.parse_args()

  if options.device:
    devices = [options.device]
  else:
    devices = android_commands.GetAttachedDevices()

  tombstones = []
  for device_serial in devices:
    device = device_utils.DeviceUtils(device_serial)
    tombstones += _GetTombstonesForDevice(device, options)

  _ResolveTombstones(options.jobs, tombstones)

if __name__ == '__main__':
  sys.exit(main())
