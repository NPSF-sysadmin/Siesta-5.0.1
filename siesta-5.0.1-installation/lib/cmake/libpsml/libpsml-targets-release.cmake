#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "libpsml::libpsml-lib" for configuration "Release"
set_property(TARGET libpsml::libpsml-lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(libpsml::libpsml-lib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libpsml.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS libpsml::libpsml-lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_libpsml::libpsml-lib "${_IMPORT_PREFIX}/lib/libpsml.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
