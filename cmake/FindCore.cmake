find_path(CORE_INCLUDE_DIR NAMES core/Exception.h PATHS ${PROJECT_DIR}/Third_Party/include)
if(WIN32)
	find_program(CORE_LIBRARY_DIR NAMES Core${CMAKE_DEBUG_POSTFIX}.dll PATHS ${PROJECT_DIR}/Third_Party/lib)
else()
	find_program(CORE_LIBRARY_DIR NAMES libCore${CMAKE_DEBUG_POSTFIX}.so PATHS ${PROJECT_DIR}/Third_Party/lib)
endif()	
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Core REQUIRED_VARS CORE_INCLUDE_DIR CORE_LIBRARY_DIR)

if(Core_FOUND)
    message(STATUS "Found Core include dir - ${Green}${CORE_INCLUDE_DIR}${ColourReset}")
    message(STATUS "Found Core library dir - ${Green}${CORE_LIBRARY_DIR}${ColourReset}")
else()
    message(WARNING ${Red}"Core not found"${ColourReset})
endif()
