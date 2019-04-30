TEMPLATE = lib
TARGET = glfw

CONFIG -= qt


win32 {
    DEFINES += _GLFW_WIN32

    HEADERS += src/win32_platform.h \
               src/win32_joystick.h \
               src/wgl_context.h    \
               src/egl_context.h    \
               src/osmesa_context.h

    SOURCES += src/win32_init.c \
               src/win32_joystick.c \
               src/win32_monitor.c \
               src/win32_time.c \
               src/win32_thread.c \
               src/win32_window.c \
               src/wgl_context.c \
               src/egl_context.c \
               src/osmesa_context.c
} else {

    DEFINES += _GLFW_X11

    HEADERS += src/x11_platform.h \
               src/xkb_unicode.h  \
               src/posix_time.h   \
               src/posix_thread.h \
               src/glx_context.h \
               src/egl_context.h \
               src/osmesa_context.h \
               src/linux_joystick.h

    SOURCES += src/x11_init.c \
               src/x11_monitor.c \
               src/x11_window.c \
               src/xkb_unicode.c \
               src/posix_time.c \
               src/posix_thread.c \
               src/glx_context.c \
               src/egl_context.c \
               src/osmesa_context.c \
               src/linux_joystick.c
    LIBS += -lX11 -lGL
}

HEADERS += \
    include/GLFW/glfw3.h \
    include/GLFW/glfw3native.h

SOURCES += \
    src/context.c \
    src/init.c \
    src/input.c \
    src/monitor.c \
    src/vulkan.c \
    src/window.c



DESTDIR += ../../bin


