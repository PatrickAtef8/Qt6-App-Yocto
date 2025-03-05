cmake_minimum_required(VERSION 3.16)
project(qt-gpio-app LANGUAGES CXX)

# Set up Qt6
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

find_package(Qt6 COMPONENTS Core Gui Quick REQUIRED)

# Define source and header files
set(SOURCES
    src/controller.cpp
    src/main.cpp
)

set(HEADERS
    inc/controller.h
)

# Include directories
include_directories(inc)

# Process Qt resource file correctly
qt_add_resources(RESOURCES resources.qrc)

# Define the executable
add_executable(${PROJECT_NAME} ${SOURCES} ${HEADERS} ${RESOURCES})

# Link Qt6 libraries
target_link_libraries(${PROJECT_NAME} PRIVATE Qt6::Core Qt6::Gui Qt6::Quick)
