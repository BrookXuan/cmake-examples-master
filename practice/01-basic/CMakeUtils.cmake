#定义 CMakeList 中的公共变量

function(utils_get_hostname CU_HOSTNAME)
    process(COMMAND hostname
    OUTPUT_VARIABLE CU_HOSTNAME
    OUTPUT_STRIP_TRAILING_WHITESPACE)
    message(STATUS "hostname: ${CU_HOSTNAME}")
endfunction()