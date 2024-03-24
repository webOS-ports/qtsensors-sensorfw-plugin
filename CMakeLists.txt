cmake_minimum_required(VERSION 3.16)
project(qtsensors_sensorfw VERSION 1.0 LANGUAGES C CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(Qt6 REQUIRED COMPONENTS Core DBus Network Sensors)
find_package(PkgConfig)
pkg_check_modules(SENSORFW sensord-qt6 REQUIRED IMPORTED_TARGET)

qt_add_library(qtsensors_sensorfw MODULE
    main.cpp
    sensorfwaccelerometer.cpp sensorfwaccelerometer.h
    sensorfwals.cpp sensorfwals.h
    sensorfwcompass.cpp sensorfwcompass.h
    sensorfwgyroscope.cpp sensorfwgyroscope.h
    sensorfwirproximitysensor.cpp sensorfwirproximitysensor.h
    sensorfwlidsensor.cpp sensorfwlidsensor.h
    sensorfwlightsensor.cpp sensorfwlightsensor.h
    sensorfwmagnetometer.cpp sensorfwmagnetometer.h
    sensorfworientationsensor.cpp sensorfworientationsensor.h
    sensorfwproximitysensor.cpp sensorfwproximitysensor.h
    sensorfwrotationsensor.cpp sensorfwrotationsensor.h
    sensorfwsensorbase.cpp sensorfwsensorbase.h
    sensorfwtapsensor.cpp sensorfwtapsensor.h
)

target_link_libraries(qtsensors_sensorfw PUBLIC
        Qt::Core
        Qt::DBus
        Qt::Network
        Qt::Sensors
        PkgConfig::SENSORFW
)

install(TARGETS qtsensors_sensorfw
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}/qt6/plugins/sensors/)
install(FILES Sensors.conf DESTINATION /etc/xdg/QtProject/)
