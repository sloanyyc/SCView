#-------------------------------------------------
#
# Project created by QtCreator 2012-04-07T21:40:49
#
#-------------------------------------------------

QT       += core gui opengl widgets

TARGET = SCLView
TEMPLATE = app

#STEPCODE_DIR = C:/prog/STEP/SCL0-5
#STEPCODE_BUILD_DIR = C:/prog/STEP/SCL0-5/ap214e3
STEPCODE_DIR = D:/AHF/stepcode
STEPCODE_BUILD_DIR = D:/AHF/stepcode/build/Debug


#win32:LIBS += $${STEPCODE_BUILD_DIR}/bin/libsdai_AP214E3_2010.dll \
#    $${STEPCODE_BUILD_DIR}/bin/libstepcore.dll \
#    $${STEPCODE_BUILD_DIR}/bin/libstepdai.dll \
#    $${STEPCODE_BUILD_DIR}/bin/libsteputils.dll \
#    $${STEPCODE_BUILD_DIR}/bin/libexpress.dll \
#    $${STEPCODE_BUILD_DIR}/bin/libstepeditor.dll

win32:LIBS += $${STEPCODE_BUILD_DIR}/lib/sdai_ap214e3.lib \
    $${STEPCODE_BUILD_DIR}/lib/stepcore.lib \
    $${STEPCODE_BUILD_DIR}/lib/stepdai.lib \
    $${STEPCODE_BUILD_DIR}/lib/steputils.lib \
    $${STEPCODE_BUILD_DIR}/lib/express.lib \
    $${STEPCODE_BUILD_DIR}/lib/stepeditor.lib

INCLUDEPATH += $${STEPCODE_BUILD_DIR}/AP214E3_2010 \
    $${STEPCODE_BUILD_DIR}/include \
    $${STEPCODE_DIR}/include \
    $${STEPCODE_DIR}/src/cleditor \
    $${STEPCODE_DIR}/src/clutils \
    $${STEPCODE_DIR}/src/clstepcore \
    $${STEPCODE_DIR}/src/cldai


SOURCES += main.cpp\
        MainWindow.cpp \
    EntityDescriptorWidget.cpp \
    manhattanstyle.cpp \
    styleanimator.cpp \
    expressg/ExpressGView.cpp \
    expressg/ExpressGScene.cpp \
    expressg/EntityItem.cpp \
    expressg/TypeItem.cpp \
    expressg/LinkItem.cpp \
    expressg/ExpressgRectItem.cpp \
    textView/ExpressViewDockWidget.cpp \
    textView/ExpressTextEdit.cpp \
    textView/ExpressSyntaxHighlighter.cpp \
    SchemaTree.cpp \
    NavigateCommand.cpp \
    SchemaTreeDockWidget.cpp

HEADERS  += MainWindow.h \
    EntityDescriptorWidget.h \
    manhattanstyle.h \
    styleanimator.h \
    expressg/ExpressGView.h \
    expressg/ExpressGScene.h \
    expressg/EntityItem.h \
    expressg/TypeItem.h \
    expressg/LinkItem.h \
    expressg/ExpressgRectItem.h \
    textView/ExpressViewDockWidget.h \
    textView/ExpressTextEdit.h \
    textView/ExpressSyntaxHighlighter.h \
    SchemaTree.h \
    NavigateCommand.h \
    SchemaTreeDockWidget.h

FORMS    += MainWindow.ui \
    EntityDescriptorWidget.ui

RESOURCES += \
    sclview.qrc

#win32:CONFIG *= dll
win32 {
    # Location libraries
    LIB_DIR = C:/prog/STEP/SCL0-5/ap214e3/bin
}
