include(ExternalProject)

set(SUBSTRAITCPP_ROOT         ${CMAKE_BINARY_DIR}/thirdparty/SUBSTRAITCPP)
set(SUBSTRAITCPP_GIT_TAG      b5a88fe42cce776cb30201542d850761df4f8089)
set(SUBSTRAITCPP_GIT_URL      https://github.com/Intel-bigdata/substrait-cpp.git)
set(SUBSTRAITCPP_CONFIGURE    cd ${SUBSTRAITCPP_ROOT}/src/SUBSTRAITCPP && cmake -D CMAKE_POSITION_INDEPENDENT_CODE=ON && cmake -D CMAKE_INSTALL_PREFIX=${SUBSTRAITCPP_ROOT} .)
set(SUBSTRAITCPP_MAKE         cd ${SUBSTRAITCPP_ROOT}/src/SUBSTRAITCPP && make)
set(SUBSTRAITCPP_INSTALL      cd ${SUBSTRAITCPP_ROOT}/src/SUBSTRAITCPP && make install)

find_path(LIBSUBSTRAITCPP_INCLUDE_DIR FunctionLookup.h ${SUBSTRAITCPP_INCLUDE_DIR})
find_library(LIBSUBSTRAITCPP_LIB libsubstrait-cpp.a ${SUBSTRAITCPP_INCLUDE_DIR})
  ExternalProject_Add(SUBSTRAITCPP
          PREFIX            ${SUBSTRAITCPP_ROOT}
          GIT_REPOSITORY    ${SUBSTRAITCPP_GIT_URL}
          GIT_TAG           ${SUBSTRAITCPP_GIT_TAG}
          CONFIGURE_COMMAND ${SUBSTRAITCPP_CONFIGURE}
          BUILD_COMMAND     ${SUBSTRAITCPP_MAKE}
          INSTALL_COMMAND   ${SUBSTRAITCPP_INSTALL}
          UPDATE_COMMAND    ""
  )
  set(SUBSTRAITCPP_LIB           ${SUBSTRAITCPP_ROOT}/src/SUBSTRAITCPP/src/libsubstrait-cpp.a)
  set(SUBSTRAITCPP_INCLUDE_DIR   ${SUBSTRAITCPP_ROOT}/src/SUBSTRAITCPP/src)