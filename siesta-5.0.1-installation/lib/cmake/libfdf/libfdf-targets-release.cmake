#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "libfdf::libfdf-lib" for configuration "Release"
set_property(TARGET libfdf::libfdf-lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(libfdf::libfdf-lib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libfdf.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS libfdf::libfdf-lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_libfdf::libfdf-lib "${_IMPORT_PREFIX}/lib/libfdf.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
