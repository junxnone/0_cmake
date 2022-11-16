message("\n-- Cmake Info --")

SET(CMAKE_INFO_VAR 
    CMAKE_VERSION
    CMAKE_MAJOR_VERSION
    CMAKE_MINOR_VERSION
    CMAKE_TWEAK_VERSION
    CMAKE_VERBOSE_MAKEFILE
    CMAKE_MINIMUM_REQUIRED_VERSION
)

foreach(VAR IN LISTS CMAKE_INFO_VAR)
    message("---- ${VAR}=${${VAR}}")
endforeach()

message("\n-- Cmake Info End --")

