# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := ui_gl_gl_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,GYP,skia_skia_gyp,,,$(GYP_VAR_PREFIX))/skia.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,skia_skia_library_gyp,,,$(GYP_VAR_PREFIX))/skia_skia_library_gyp.a \
	$(call intermediates-dir-for,GYP,third_party_mesa_mesa_headers_gyp,,,$(GYP_VAR_PREFIX))/mesa_headers.stamp \
	$(call intermediates-dir-for,GYP,ui_gl_gl_jni_headers_gyp,,,$(GYP_VAR_PREFIX))/gl_jni_headers.stamp

### Rules for action "generate_gl_bindings":
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc: $(LOCAL_PATH)/ui/gl/generate_bindings.py $(LOCAL_PATH)/third_party/mesa/src/include/GL/glext.h $(LOCAL_PATH)/third_party/khronos/GLES2/gl2ext.h $(LOCAL_PATH)/ui/gl/GL/glextchromium.h $(LOCAL_PATH)/gpu/GLES2/gl2chromium.h $(LOCAL_PATH)/gpu/GLES2/gl2extchromium.h $(LOCAL_PATH)/third_party/khronos/EGL/eglext.h $(LOCAL_PATH)/ui/gl/EGL/eglextchromium.h $(LOCAL_PATH)/third_party/mesa/src/include/GL/wglext.h $(LOCAL_PATH)/third_party/mesa/src/include/GL/glx.h $(LOCAL_PATH)/third_party/mesa/src/include/GL/glxext.h $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: ui_gl_gl_gyp_gl_target_generate_gl_bindings ($@)"
	$(hide)cd $(gyp_local_path)/ui/gl; mkdir -p $(gyp_shared_intermediate_dir)/ui/gl; python generate_bindings.py "--header-paths=../../third_party/khronos:../../third_party/mesa/src/include:.:../../gpu" "$(gyp_shared_intermediate_dir)/ui/gl"

$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_egl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_gl.cc: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_gl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_gl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_glx.cc: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_glx.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_glx.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_mock.cc: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_mock.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_osmesa.cc: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_osmesa.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_osmesa.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_wgl.cc: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_wgl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_wgl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_mock_autogen_gl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;


GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_egl.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_gl.cc \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_gl.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_gl.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_glx.cc \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_glx.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_glx.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_mock.cc \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_mock.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_osmesa.cc \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_osmesa.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_osmesa.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_wgl.cc \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_wgl.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_wgl.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_mock_autogen_gl.h

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_CPP_EXTENSION := .cc
$(gyp_intermediate_dir)/gl_bindings_autogen_gl.cc: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_gl.cc
	mkdir -p $(@D); cp $< $@
$(gyp_intermediate_dir)/gl_bindings_autogen_osmesa.cc: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_osmesa.cc
	mkdir -p $(@D); cp $< $@
$(gyp_intermediate_dir)/gl_bindings_autogen_egl.cc: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc
	mkdir -p $(@D); cp $< $@
LOCAL_GENERATED_SOURCES := \
	$(gyp_intermediate_dir)/gl_bindings_autogen_gl.cc \
	$(gyp_intermediate_dir)/gl_bindings_autogen_osmesa.cc \
	$(gyp_intermediate_dir)/gl_bindings_autogen_egl.cc

GYP_COPIED_SOURCE_ORIGIN_DIRS := \
	$(gyp_shared_intermediate_dir)/ui/gl

LOCAL_SRC_FILES := \
	ui/gl/android/gl_jni_registrar.cc \
	ui/gl/android/scoped_java_surface.cc \
	ui/gl/android/surface_texture.cc \
	ui/gl/android/surface_texture_listener.cc \
	ui/gl/android/surface_texture_tracker.cc \
	ui/gl/gl_bindings_skia_in_process.cc \
	ui/gl/gl_context.cc \
	ui/gl/gl_context_android.cc \
	ui/gl/gl_context_osmesa.cc \
	ui/gl/gl_context_stub.cc \
	ui/gl/gl_context_stub_with_extensions.cc \
	ui/gl/gl_fence.cc \
	ui/gl/gl_fence_arb.cc \
	ui/gl/gl_fence_nv.cc \
	ui/gl/gl_gl_api_implementation.cc \
	ui/gl/gl_image.cc \
	ui/gl/gl_image_android.cc \
	ui/gl/gl_image_shm.cc \
	ui/gl/gl_image_stub.cc \
	ui/gl/gl_implementation.cc \
	ui/gl/gl_implementation_android.cc \
	ui/gl/gl_osmesa_api_implementation.cc \
	ui/gl/gl_share_group.cc \
	ui/gl/gl_state_restorer.cc \
	ui/gl/gl_surface.cc \
	ui/gl/gl_surface_android.cc \
	ui/gl/gl_surface_stub.cc \
	ui/gl/gl_surface_osmesa.cc \
	ui/gl/gl_switches.cc \
	ui/gl/gl_version_info.cc \
	ui/gl/gpu_switching_manager.cc \
	ui/gl/scoped_binders.cc \
	ui/gl/scoped_make_current.cc \
	ui/gl/sync_control_vsync_provider.cc \
	ui/gl/egl_util.cc \
	ui/gl/gl_context_egl.cc \
	ui/gl/gl_fence_egl.cc \
	ui/gl/gl_image_egl.cc \
	ui/gl/gl_surface_egl.cc \
	ui/gl/gl_egl_api_implementation.cc \
	ui/gl/gl_implementation_osmesa.cc \
	ui/gl/gl_image_android_native_buffer.cc \
	ui/gl/gl_image_surface_texture.cc


# Flags passed to both C and C++ files.
MY_CFLAGS_Debug := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-unused-local-typedefs \
	-m64 \
	-march=x86-64 \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Wno-unused-but-set-variable \
	-Os \
	-g \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-funwind-tables

MY_DEFS_Debug := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DBLINK_SCALE_FILTERS_AT_RECORD_TIME' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DENABLE_WEBRTC=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_BROWSER_CDMS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DENABLE_EGLIMAGE=1' \
	'-DCLD_VERSION=1' \
	'-DCLD_DATA_FROM_STATIC' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DDATA_REDUCTION_FALLBACK_HOST="http://compress.googlezip.net:80/"' \
	'-DDATA_REDUCTION_DEV_HOST="http://proxy-dev.googlezip.net:80/"' \
	'-DSPDY_PROXY_AUTH_ORIGIN="https://proxy.googlezip.net:443/"' \
	'-DDATA_REDUCTION_PROXY_PROBE_URL="http://check.googlezip.net/connect"' \
	'-DDATA_REDUCTION_PROXY_WARMUP_URL="http://www.gstatic.com/generate_204"' \
	'-DVIDEO_HOLE=1' \
	'-DGL_IMPLEMENTATION' \
	'-DGL_GLEXT_PROTOTYPES' \
	'-DEGL_EGLEXT_PROTOTYPES' \
	'-DSK_ENABLE_INST_COUNT=0' \
	'-DSK_SUPPORT_GPU=1' \
	'-DGR_GL_CUSTOM_SETUP_HEADER="GrGLConfig_chrome.h"' \
	'-DSK_ENABLE_LEGACY_API_ALIASING=1' \
	'-DSK_ATTR_DEPRECATED=SK_NOTHING_ARG1' \
	'-DGR_GL_IGNORE_ES3_MSAA=0' \
	'-DSK_WILL_NEVER_DRAW_PERSPECTIVE_TEXT' \
	'-DSK_SUPPORT_LEGACY_PICTURE_CLONE' \
	'-DSK_SUPPORT_LEGACY_GETDEVICE' \
	'-DSK_IGNORE_ETC1_SUPPORT' \
	'-DSK_IGNORE_GPU_DITHER' \
	'-DSK_BUILD_FOR_ANDROID' \
	'-DSK_USE_POSIX_THREADS' \
	'-DSK_DEFERRED_CANVAS_USES_FACTORIES=1' \
	'-DMESA_EGL_NO_X11_HEADERS' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Debug := \
	$(gyp_shared_intermediate_dir)/shim_headers/icui18n/target \
	$(gyp_shared_intermediate_dir)/shim_headers/icuuc/target \
	$(gyp_shared_intermediate_dir)/shim_headers/ashmem/target \
	$(gyp_shared_intermediate_dir) \
	$(LOCAL_PATH)/third_party/swiftshader/include \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/third_party/mesa/src/include \
	$(gyp_shared_intermediate_dir)/ui/gl \
	$(LOCAL_PATH)/gpu \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/skia/ext \
	$(PWD)/external/icu4c/common \
	$(PWD)/external/icu4c/i18n \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Debug := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-std=gnu++11 \
	-Wno-narrowing \
	-Wno-literal-suffix \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


# Flags passed to both C and C++ files.
MY_CFLAGS_Release := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-unused-local-typedefs \
	-m64 \
	-march=x86-64 \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Wno-unused-but-set-variable \
	-Os \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-funwind-tables

MY_DEFS_Release := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DBLINK_SCALE_FILTERS_AT_RECORD_TIME' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DENABLE_WEBRTC=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_BROWSER_CDMS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DENABLE_EGLIMAGE=1' \
	'-DCLD_VERSION=1' \
	'-DCLD_DATA_FROM_STATIC' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DDATA_REDUCTION_FALLBACK_HOST="http://compress.googlezip.net:80/"' \
	'-DDATA_REDUCTION_DEV_HOST="http://proxy-dev.googlezip.net:80/"' \
	'-DSPDY_PROXY_AUTH_ORIGIN="https://proxy.googlezip.net:443/"' \
	'-DDATA_REDUCTION_PROXY_PROBE_URL="http://check.googlezip.net/connect"' \
	'-DDATA_REDUCTION_PROXY_WARMUP_URL="http://www.gstatic.com/generate_204"' \
	'-DVIDEO_HOLE=1' \
	'-DGL_IMPLEMENTATION' \
	'-DGL_GLEXT_PROTOTYPES' \
	'-DEGL_EGLEXT_PROTOTYPES' \
	'-DSK_ENABLE_INST_COUNT=0' \
	'-DSK_SUPPORT_GPU=1' \
	'-DGR_GL_CUSTOM_SETUP_HEADER="GrGLConfig_chrome.h"' \
	'-DSK_ENABLE_LEGACY_API_ALIASING=1' \
	'-DSK_ATTR_DEPRECATED=SK_NOTHING_ARG1' \
	'-DGR_GL_IGNORE_ES3_MSAA=0' \
	'-DSK_WILL_NEVER_DRAW_PERSPECTIVE_TEXT' \
	'-DSK_SUPPORT_LEGACY_PICTURE_CLONE' \
	'-DSK_SUPPORT_LEGACY_GETDEVICE' \
	'-DSK_IGNORE_ETC1_SUPPORT' \
	'-DSK_IGNORE_GPU_DITHER' \
	'-DSK_BUILD_FOR_ANDROID' \
	'-DSK_USE_POSIX_THREADS' \
	'-DSK_DEFERRED_CANVAS_USES_FACTORIES=1' \
	'-DMESA_EGL_NO_X11_HEADERS' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0' \
	'-D_FORTIFY_SOURCE=2'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Release := \
	$(gyp_shared_intermediate_dir)/shim_headers/icui18n/target \
	$(gyp_shared_intermediate_dir)/shim_headers/icuuc/target \
	$(gyp_shared_intermediate_dir)/shim_headers/ashmem/target \
	$(gyp_shared_intermediate_dir) \
	$(LOCAL_PATH)/third_party/swiftshader/include \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/third_party/mesa/src/include \
	$(gyp_shared_intermediate_dir)/ui/gl \
	$(LOCAL_PATH)/gpu \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/skia/ext \
	$(PWD)/external/icu4c/common \
	$(PWD)/external/icu4c/i18n \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Release := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-std=gnu++11 \
	-Wno-narrowing \
	-Wno-literal-suffix \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


LOCAL_CFLAGS := $(MY_CFLAGS_$(GYP_CONFIGURATION)) $(MY_DEFS_$(GYP_CONFIGURATION))
LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES_$(GYP_CONFIGURATION))
LOCAL_CPPFLAGS := $(LOCAL_CPPFLAGS_$(GYP_CONFIGURATION))
LOCAL_ASFLAGS := $(LOCAL_CFLAGS)
### Rules for final target.

LOCAL_LDFLAGS_Debug := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,--fatal-warnings \
	-Wl,-z,noexecstack \
	-fPIC \
	-m64 \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	-Wl,--warn-shared-textrel \
	-Wl,-O1 \
	-Wl,--as-needed


LOCAL_LDFLAGS_Release := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,--fatal-warnings \
	-Wl,-z,noexecstack \
	-fPIC \
	-m64 \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	-Wl,-O1 \
	-Wl,--as-needed \
	-Wl,--gc-sections \
	-Wl,--warn-shared-textrel


LOCAL_LDFLAGS := $(LOCAL_LDFLAGS_$(GYP_CONFIGURATION))

LOCAL_STATIC_LIBRARIES := \
	skia_skia_library_gyp

# Enable grouping to fix circular references
LOCAL_GROUP_STATIC_LIBRARIES := true

LOCAL_SHARED_LIBRARIES := \
	libstlport \
	libdl

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: ui_gl_gl_gyp

# Alias gyp target name.
.PHONY: gl
gl: ui_gl_gl_gyp

include $(BUILD_STATIC_LIBRARY)
