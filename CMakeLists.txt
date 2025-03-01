cmake_minimum_required(VERSION 3.16)
project(MyQtApp LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

find_package(Qt6 COMPONENTS Core Gui Quick REQUIRED)

add_executable(qtapp main.cpp resources.qrc)

target_link_libraries(qtapp PRIVATE Qt6::Core Qt6::Gui Qt6::Quick)
