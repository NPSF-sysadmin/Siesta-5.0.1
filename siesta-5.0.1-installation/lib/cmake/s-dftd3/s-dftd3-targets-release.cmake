#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "s-dftd3::s-dftd3-lib" for configuration "Release"
set_property(TARGET s-dftd3::s-dftd3-lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(s-dftd3::s-dftd3-lib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libs-dftd3.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS s-dftd3::s-dftd3-lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_s-dftd3::s-dftd3-lib "${_IMPORT_PREFIX}/lib/libs-dftd3.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
