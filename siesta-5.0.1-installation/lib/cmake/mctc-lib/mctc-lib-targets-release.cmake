#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "mctc-lib::mctc-lib-lib" for configuration "Release"
set_property(TARGET mctc-lib::mctc-lib-lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(mctc-lib::mctc-lib-lib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libmctc-lib.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS mctc-lib::mctc-lib-lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_mctc-lib::mctc-lib-lib "${_IMPORT_PREFIX}/lib/libmctc-lib.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
