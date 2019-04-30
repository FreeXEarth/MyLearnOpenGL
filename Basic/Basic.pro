TEMPLATE = app
TARGET = Basic
CONFIG -= qt
CONFIG -= warn_off
SOURCES += \
    main.cpp

DESTDIR += ../bin

LIBS += -L ../bin -lglfw -lglew
unix {
    LIBS += -lX11 -lGL
}

INCLUDEPATH += $$PWD/../3rdparty/glfw/include
DEPENDPATH += $$PWD/../3rdparty/glfw

INCLUDEPATH += $$PWD/../3rdparty/glew/include
DEPENDPATH += $$PWD/../3rdparty/glew
