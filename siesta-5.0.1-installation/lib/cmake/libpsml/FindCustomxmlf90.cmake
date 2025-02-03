include(LibpsmlFindPackage)

Libpsml_find_package(xmlf90
  REQUIRED
  MIN_VERSION 1.5.4
  GIT_REPOSITORY "https://gitlab.com/siesta-project/libraries/xmlf90"
  GIT_TAG "master"
  SOURCE_DIR ${XMLF90_SOURCE_DIR}
  )

