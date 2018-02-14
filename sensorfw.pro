TARGET = qtsensors_sensorfw
QT = core sensors-private network dbus

include(sensorfw.pri)

enable-qcom-bsp {
    DEFINES += QCOM_BSP
}

enable-qti-bsp {
    DEFINES += QTI_BSP
}

enable-qcom-hardware {
    DEFINES += QCOM_HARDWARE
}

CONFIG += link_pkgconfig
PKGCONFIG += sensord-qt5

CONFIGFILES.files = Sensors.conf
CONFIGFILES.path = /etc/xdg/QtProject/
INSTALLS += CONFIGFILES

OTHER_FILES = plugin.json

PLUGIN_TYPE = sensors
PLUGIN_CLASS_NAME = sensorfwSensorPlugin
load(qt_plugin)
