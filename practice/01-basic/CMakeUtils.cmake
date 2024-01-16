#定义 CMakeList 中的公共变量
# PARENT_SCOPE： 将值的设置到父作用域（调用者）中，而不是当前作用域中

function(util_get_hostname HOSTNAME)
    execute_process(COMMAND hostname
    OUTPUT_VARIABLE CU_HOSTNAME
    OUTPUT_STRIP_TRAILING_WHITESPACE)
    set(HOSTNAME ${CU_HOSTNAME} PARENT_SCOPE)
    message(STATUS "hostname: ${HOSTNAME}")
endfunction()

function(util_get_basic_source_dir HOSTNAME BASIC_SOURCE_DIR)
    message(STATUS "input hostname: ${HOSTNAME}")
    if(HOSTNAME STREQUAL "ggjs-pc")
        set(CU_SOURCE_DIR /home/ggjs/brook/private/cmake-examples-master/01-basic)
    elseif(HOSTNAME STREQUAL "LenovoG480")
        set(CU_SOURCE_DIR /home/cx/projects/CMake/cmake-examples-master/01-basic)
    endif()
    set(BASIC_SOURCE_DIR ${CU_SOURCE_DIR} PARENT_SCOPE)
    message(STATUS "CU_SOURCE_DIR: ${CU_SOURCE_DIR}")
    message(STATUS "BASIC_SOURCE_DIR: ${BASIC_SOURCE_DIR}")
endfunction()

