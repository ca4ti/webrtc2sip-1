QT -= core gui

TARGET = mpLib
TEMPLATE = lib

QMAKE_CXXFLAGS += \
    -DHAVE_CONFIG_H

unix {
    CONFIG(debug, debug|release) {
        DESTDIR = $$PWD/../build/debug
    } else {
        DESTDIR = $$PWD/../build/release
    }
}

unix {
    target.path = /usr/lib
    INSTALLS += target
}

CI-TEST{
    target.path = $$(INSTALL_PATH)/ci-test/commonlib
    INSTALLS = target
}

INCLUDEPATH += \
    $$PWD/../ \
    $$PWD/../tinywrap \
    $$PWD/../doubango/tinySAK/src \
    $$PWD/../doubango/tinyNET/src \
    $$PWD/../doubango/tinyHTTP/include \
    $$PWD/../doubango/tinyXCAP/include \
    $$PWD/../doubango/tinyIPSec/src \
    $$PWD/../doubango/tinySMS/include \
    $$PWD/../doubango/tinySIGCOMP/src \
    $$PWD/../doubango/tinySDP/include \
    $$PWD/../doubango/tinyBFCP/include \
    $$PWD/../doubango/tinyMSRP/include \
    $$PWD/../doubango/tinyMEDIA/include \
    $$PWD/../doubango/tinyRTP/include \
    $$PWD/../doubango/tinyDAV/include \
    $$PWD/../doubango/tinySIP/include \
    $$PWD/../doubango/thirdparties/common/include/libxml2 \
    $$PWD/../doubango/thirdparties/common/include

HEADERS += \
    $$PWD/../mp_c2c.h \
    $$PWD/../mp_common.h \
    $$PWD/../mp_config.h \
    $$PWD/../mp_engine.h \
    $$PWD/../mp_mail.h \
    $$PWD/../mp_mutex.h \
    $$PWD/../mp_net_transport.h \
    $$PWD/../mp_object.h \
    $$PWD/../mp_peer.h \
    $$PWD/../mp_proxyplugin.h \
    $$PWD/../mp_proxyplugin_consumer_audio.h \
    $$PWD/../mp_proxyplugin_consumer_video.h \
    $$PWD/../mp_proxyplugin_mgr.h \
    $$PWD/../mp_proxyplugin_producer_audio.h \
    $$PWD/../mp_proxyplugin_producer_video.h \
    $$PWD/../mp_recaptcha.h \
    $$PWD/../mp_session.h \
    $$PWD/../mp_session_av.h \
    $$PWD/../mp_wrap.h

SOURCES += \
    $$PWD/../mp_c2c.cc \
    $$PWD/../mp_engine.cc \
    $$PWD/../mp_mail.cc \
    $$PWD/../mp_mutex.cc \
    $$PWD/../mp_net_transport.cc \
    $$PWD/../mp_object.cc \
    $$PWD/../mp_peer.cc \
    $$PWD/../mp_proxyplugin.cc \
    $$PWD/../mp_proxyplugin_consumer_audio.cc \
    $$PWD/../mp_proxyplugin_consumer_video.cc \
    $$PWD/../mp_proxyplugin_mgr.cc \
    $$PWD/../mp_proxyplugin_producer_audio.cc \
    $$PWD/../mp_proxyplugin_producer_video.cc \
    $$PWD/../mp_recaptcha.cc \
    $$PWD/../mp_session.cc \
    $$PWD/../mp_session_av.cc \
    $$PWD/../mp_wrap.cc
