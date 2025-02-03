#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "xmlf90::xmlf90-lib" for configuration "Release"
set_property(TARGET xmlf90::xmlf90-lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(xmlf90::xmlf90-lib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libxmlf90.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS xmlf90::xmlf90-lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_xmlf90::xmlf90-lib "${_IMPORT_PREFIX}/lib/libxmlf90.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
