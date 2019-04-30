TEMPLATE = lib
TARGET = glew

CONFIG -= qt




INCLUDEPATH += include

HEADERS += \
    include/GL/glew.h

SOURCES += \
    src/glew.c

win32 {
   HEADERS += \
     include/GL/wglew.h
} else {
   HEADERS += \
     include/GL/glxew.h
}
DESTDIR += ../../bin
