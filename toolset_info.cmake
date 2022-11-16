message("\n-- Toolsets Info --")

enable_language(C)
set(CMAKE_C_STANDARD 14)
set(CMAKE_CXX_STANDARD 14)

SET(TOOLSETS_INFO_VAR CMAKE_C_COMPILER_ID
    CMAKE_CXX_COMPILER_ID
    CMAKE_C_COMPILER
    CMAKE_CXX_COMPILER
    CMAKE_C_COMPILER_VERSION
    CMAKE_CXX_COMPILER_VERSION
    CMAKE_C_FLAGS
    CMAKE_CXX_FLAGS
    CMAKE_C_COMPILER_AR
    CMAKE_CXX_COMPILER_AR
    CMAKE_C_COMPILE_FEATURES
    CMAKE_CXX_COMPILE_FEATURES
    CMAKE_AR
    CMAKE_C_STANDARD
    CMAKE_CXX_STANDARD
    CMAKE_ROOT
    CMAKE_RANLIB

)

foreach(VAR IN LISTS TOOLSETS_INFO_VAR)
    message("---- ${VAR}=${${VAR}}")
endforeach()
message("\n-- Toolsets Info End --")
