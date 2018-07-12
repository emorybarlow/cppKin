find_path(POCO_INCLUDE_DIR NAMES Poco/JSON/JSON.h PATHS ${PROJECT_3RD_LOC}/include NO_DEFAULT_PATH)
find_program(POCO_LIBRARY_DIR NAMES libPocoJSON.so PATHS ${PROJECT_3RD_LOC}/lib NO_DEFAULT_PATH)
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(POCO REQUIRED_VARS POCO_INCLUDE_DIR POCO_LIBRARY_DIR)

if(POCO_FOUND)
    message(STATUS ${Green}"Found POCO include dir - ${POCO_INCLUDE_DIR}"${ColourReset})
    message(STATUS ${Green}"Found POCO library dir - ${POCO_LIBRARY_DIR}"${ColourReset})
else()
    message(WARNING ${Red}"POCO not found"${ColourReset})
endif()