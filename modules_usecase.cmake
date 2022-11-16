message("\n ---- Modules usecase -----")


include(CMakePrintSystemInformation)
include(FindPackageMessage)
find_package(X11)
find_package_message(X11 "Found X11: ${X11_X11_LIB}"
    "[${X11_X11_LIB}][${X11_INCLUDE_DIR}]")
include(FindCUDA)
