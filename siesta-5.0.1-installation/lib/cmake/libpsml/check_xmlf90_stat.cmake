  # We might know already about the variable XMLF90_PARSE_HAS_STAT
  # if compiling xmlf90 as "source/fetch",
  # through a cache variable in modern versions of xmlf90
  
  # If not, the pre-compiled library is available and we can check:

  if( "${xmlf90_FOUND_METHOD}" STREQUAL "cmake" OR
      "${xmlf90_FOUND_METHOD}" STREQUAL "pkgconf")

    include(CheckFortranSourceCompiles)

    list(APPEND CMAKE_MESSAGE_INDENT "  ")

    set(CMAKE_REQUIRED_LIBRARIES xmlf90::xmlf90)
    check_fortran_source_compiles("program test_xmlf90
                                   use xmlf90_sax
                                   type(xml_t) :: fxml
                                   integer :: iostat
                                   call xml_parse(fxml,stat=iostat)
			           end program"
    XMLF90_PARSE_HAS_STAT SRC_EXT F90)

    unset(CMAKE_REQUIRED_LIBRARIES)

    list(POP_BACK CMAKE_MESSAGE_INDENT)

  else()
  
    if (XMLF90_PARSE_HAS_STAT)
      message(STATUS "xmlf90 (from source/fetch) has the 'stat' feature")
    endif()
    
  endif()
  

