CMAKE_minimum_required(VERSION 3.16)

# line comment

#[[ multi-line comment
comment line 1
comment line 2
]]

message("\n############# This is debug info #############\n")

message("OS Info:")
message("- CMAKE_SYSTEM_NAME")
message("- Before project define CMAKE_SYSTEM_NAME is: ${CMAKE_SYSTEM_NAME}")

project(X0_CMAKE 
    VERSION 0.0.1.0
    DESCRIPTION "0 to 1 CMAKE tutorial"
    HOMEPAGE_URL "https://github.com/junxnone/X0_CMAKE"
    LANGUAGES CXX)
configure_file(config.h.in config.h)

add_executable(0_c main.cpp)
target_include_directories(0_c PUBLIC
                           "${PROJECT_BINARY_DIR}"
                           )

message("- After project define CMAKE_SYSTEM_NAME is: ${CMAKE_SYSTEM_NAME}\n")
message("- WIN32 is: ${WIN32}")
message("- MSVC is: ${MSVC}")
message("- LINUX is: ${LINUX}")
message("- CMAKE_HOST_LINUX is: ${CMAKE_HOST_LINUX}")
message("- CMAKE_HOST_SYSTEM is: ${CMAKE_HOST_SYSTEM}")
message("- CMAKE_HOST_SYSTEM_NAME is: ${CMAKE_HOST_SYSTEM_NAME}")
message("- CMAKE_HOST_SYSTEM_PROCESSOR is: ${CMAKE_HOST_SYSTEM_PROCESSOR}")
message("- CMAKE_HOST_SYSTEM_VERSION is: ${CMAKE_HOST_SYSTEM_VERSION}")

message("- CMAKE_SYSTEM is: ${CMAKE_SYSTEM}")
message("- CMAKE_SYSTEM_NAME is: ${CMAKE_SYSTEM_NAME}")
message("- CMAKE_SYSTEM_PROCESSOR is: ${CMAKE_SYSTEM_PROCESSOR}")
message("- CMAKE_SYSTEM_VERSION is: ${CMAKE_SYSTEM_VERSION}")
message("- CMAKE_LIBRARY_ARCHITECTURE is: ${CMAKE_LIBRARY_ARCHITECTURE}")
message("- CMAKE_LIBRARY_ARCHITECTURE_REGEX is: ${CMAKE_LIBRARY_ARCHITECTURE_REGEX}")


option(PRINT_PROJECT_INFO "Project Info" OFF)

if(${PRINT_PROJECT_INFO})
    include(project_info.cmake)
endif()


option(PRINT_DIR_INFO "Directory Info" OFF)

if(${PRINT_DIR_INFO})
    include(dir_info.cmake)
endif()

option(PRINT_CMAKE_INFO "Cmake Info" OFF)

if(${PRINT_CMAKE_INFO})
    include(cmake_info.cmake)
endif()


option(PRINT_HOST_INFO "Host Info" OFF)

if(${PRINT_HOST_INFO})
    include(host_info.cmake)
endif()

option(PRINT_TOOLSETS_INFO "Toolsets Info" OFF)

if(${PRINT_TOOLSETS_INFO})
    include(toolset_info.cmake)
endif()

option(MODULES_USECASE "Modules Usecase" OFF)

if(${MODULES_USECASE})
    include(modules_usecase.cmake)
endif()
