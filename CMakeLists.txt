cmake_minimum_required (VERSION 3.16)

list(APPEND CMAKE_PREFIX_PATH "/home/yuxuan/Downloads/libroyale/lib/cmake")

project (sampleRetrieveData)

find_package (royale REQUIRED)

add_executable (sampleRetrieveData sampleRetrieveData.cpp)

target_include_directories (sampleRetrieveData PRIVATE "/home/yuxuan/Downloads/libroyale/samples/inc")

copy_royale_libs (sampleRetrieveData)

target_link_libraries (sampleRetrieveData royale::royale)
