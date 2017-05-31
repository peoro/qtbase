# Qt dialogs module

HEADERS += \
        dialogs/qfscompleter_p.h \
	dialogs/qfontdialog.h \
	dialogs/qfontdialog_p.h \
        dialogs/qfilesystemmodel.h \
        dialogs/qfilesystemmodel_p.h \
        dialogs/qfileinfogatherer_p.h

INCLUDEPATH += $$PWD
SOURCES += \
	dialogs/qfontdialog.cpp \
        dialogs/qfilesystemmodel.cpp \
        dialogs/qfileinfogatherer.cpp

qtConfig(colordialog) {
    HEADERS += dialogs/qcolordialog.h
    SOURCES += dialogs/qcolordialog.cpp
}

qtConfig(dialog) {
    HEADERS += \
        dialogs/qdialog.h \
        dialogs/qdialog_p.h

    SOURCES += \
        dialogs/qdialog.cpp
}

qtConfig(errormessage) {
    HEADERS += dialogs/qerrormessage.h
    SOURCES += dialogs/qerrormessage.cpp
}

qtConfig(filedialog) {
    HEADERS += \
        dialogs/qfiledialog.h \
        dialogs/qfiledialog_p.h \
        dialogs/qsidebar_p.h

    SOURCES += \
        dialogs/qfiledialog.cpp \
        dialogs/qsidebar.cpp

    FORMS += dialogs/qfiledialog.ui
}

qtConfig(inputdialog) {
    HEADERS += dialogs/qinputdialog.h
    SOURCES += dialogs/qinputdialog.cpp
}

qtConfig(messagebox) {
    HEADERS += dialogs/qmessagebox.h
    SOURCES += dialogs/qmessagebox.cpp
    RESOURCES += dialogs/qmessagebox.qrc
}

qtConfig(progressdialog) {
    HEADERS += dialogs/qprogressdialog.h
    SOURCES += dialogs/qprogressdialog.cpp
}

qtConfig(wizard) {
    HEADERS += dialogs/qwizard.h
    SOURCES += dialogs/qwizard.cpp

    win32 {
        HEADERS += dialogs/qwizard_win_p.h
        SOURCES += dialogs/qwizard_win.cpp
    }
}
