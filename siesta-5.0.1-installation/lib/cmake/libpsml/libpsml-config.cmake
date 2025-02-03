
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was template.cmake                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

#- Search for dependencies

if(NOT TARGET xmlf90::xmlf90)

 list(PREPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}")

 #
 # xmlf90_DIR is a hint for cmake-package search: if set, and existing,
 # is a guarantee that we will find the dependency we compiled the library with
 #
 # xmlf90_PREFIX is set if xmlf90 was discovered using a pkg-config search.
 #
 # In all cases, the logic in the custom finder module takes over. This means
 # that 'cmake' search might take precedence, even if xmlf90_PREFIX is set.
 #
 # The following can be made less verbose
 set(xmlf90_DIR xmlf90_DIR-NOTFOUND)
 set(xmlf90_PREFIX )

 set(_searched FALSE)

 if(xmlf90_DIR)
  message(STATUS "Recorded hint for xmlf90 cmake-package search: ${xmlf90_DIR}")
  if (EXISTS "${xmlf90_DIR}")
   set(xmlf90_FIND_METHOD "cmake")
   find_package(Customxmlf90)
   set(_searched TRUE)
  else()
   message(STATUS "... but that directory does not exist... you might need extra hints")
  endif()	    

 elseif(xmlf90_PREFIX)
  message(STATUS "Recorded hint for pkg-conf xmlf90_PREFIX: ${xmlf90_PREFIX}")

  if (EXISTS "${xmlf90_PREFIX}")

   list(PREPEND CMAKE_PREFIX_PATH "${xmlf90_PREFIX}")
   set(xmlf90_FIND_METHOD "pkgconf")
   find_package(Customxmlf90)
   list(POP_FRONT CMAKE_PREFIX_PATH)
   set(_searched TRUE)

  else()
   message(STATUS "... but that directory does not exist... you might need extra hints")
  endif()

 endif()

 if (NOT _searched)
  message(STATUS "No xmlf90 dependency hints recorded. Finder module takes over")
  find_package(Customxmlf90)
 endif()

 list(POP_FRONT CMAKE_MODULE_PATH)

endif()

#-------

if(NOT TARGET "libpsml::libpsml")
  include("${CMAKE_CURRENT_LIST_DIR}/libpsml-targets.cmake")
endif()

