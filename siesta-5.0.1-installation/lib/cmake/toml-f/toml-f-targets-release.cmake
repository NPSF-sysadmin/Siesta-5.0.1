#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "toml-f::toml-f-lib" for configuration "Release"
set_property(TARGET toml-f::toml-f-lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(toml-f::toml-f-lib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libtoml-f.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS toml-f::toml-f-lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_toml-f::toml-f-lib "${_IMPORT_PREFIX}/lib/libtoml-f.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
