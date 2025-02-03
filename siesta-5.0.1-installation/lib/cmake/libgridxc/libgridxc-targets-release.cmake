#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "libgridxc::libgridxc-lib" for configuration "Release"
set_property(TARGET libgridxc::libgridxc-lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(libgridxc::libgridxc-lib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libgridxc.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS libgridxc::libgridxc-lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_libgridxc::libgridxc-lib "${_IMPORT_PREFIX}/lib/libgridxc.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
