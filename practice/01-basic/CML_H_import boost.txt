cmake_minimum_required(VERSION 3.5)
include(./CMakeUtils.cmake)

util_get_hostname(HOSTNAME)
util_get_basic_source_dir(${HOSTNAME} BASIC_SOURCE_DIR)

project(01-H-bin)
find_package(Boost 1.46.1 REQUIRED COMPONENTS filesystem system)

add_executable(${PROJECT_NAME} ${BASIC_SOURCE_DIR}/H-third-party-library/main.cpp)

if(Boost_FOUND)
    message("boost found.")
    message("head file:" , ${Boost_INCLUDE_DIRS})
    message("lib file:" , ${Boost_SYSTEM},${Boost_FILESYSTEM})

    # first way: add boost head file and lib
    # target_include_directories(${PROJECT_NAME} PRIVATE ${Boost_INCLUDE_DIRS})
    # target_link_libraries(${PROJECT_NAME} PRIVATE ${Boost_SYSTEM} ${Boost_FILESYSTEM})

    # second way: add boost head file and lib
    target_link_libraries(${PROJECT_NAME} PRIVATE Boost::system Boost::filesystem)
else()
    message("can not find boost.")
endif()