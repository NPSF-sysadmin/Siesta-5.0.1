#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "test-drive::test-drive-lib" for configuration "Release"
set_property(TARGET test-drive::test-drive-lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(test-drive::test-drive-lib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libtest-drive.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS test-drive::test-drive-lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_test-drive::test-drive-lib "${_IMPORT_PREFIX}/lib/libtest-drive.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
