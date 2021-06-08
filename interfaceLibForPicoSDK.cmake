## Include this file if you want to use the RF24 library
## in YOUR (Pico) project.

cmake_minimum_required(VERSION 3.12)

# Define the zlib library
add_library(zlib INTERFACE)

target_sources(zlib INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/adler32.c
    ${CMAKE_CURRENT_LIST_DIR}/compress.c
    ${CMAKE_CURRENT_LIST_DIR}/crc32.c
    ${CMAKE_CURRENT_LIST_DIR}/deflate.c
    ${CMAKE_CURRENT_LIST_DIR}/inffast.c
    ${CMAKE_CURRENT_LIST_DIR}/inflate.c
    ${CMAKE_CURRENT_LIST_DIR}/inftrees.c
    ${CMAKE_CURRENT_LIST_DIR}/trees.c
    ${CMAKE_CURRENT_LIST_DIR}/uncompr.c
    ${CMAKE_CURRENT_LIST_DIR}/zutil.c
)

target_include_directories(zlib INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/
)
