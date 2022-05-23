cmake_minimum_required(VERSION 3.5)
project(WBDB VERSION 1.0)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_INSTALL_PREFIX "${PROJECT_SOURCE_DIR}/bin")
set(LIB_MATH "math")
#let excutable find sharded library in ../lib
if(UNIX)
message("--${CMAKE_INSTALL_PREFIX}")
list(APPEND CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")
endif()  
#add source files to lists
aux_source_directory(./src SOURCE_PATH)
set(INC_PATH "${PROJECT_SOURCE_DIR}/include")
configure_file(configure.h.in configure.h)
#add math library
add_subdirectory(lib)
list(APPEND DB_LIB ${LIB_MATH})
add_executable(${PROJECT_NAME} ${SOURCE_PATH})
target_link_libraries(${PROJECT_NAME} PUBLIC ${DB_LIB})
target_include_directories(${PROJECT_NAME}  PUBLIC
                    "${PROJECT_BINARY_DIR}" 
                     "${INC_PATH}" 
                         )

#install rule
#install(TARGETS ${PROJECT_NAME} DESTINATION bin)
install(FILES "${PROJECT_BINARY_DIR}/configure.h"  DESTINATION include)
install(TARGETS ${PROJECT_NAME} ${LIB_MATH}
           EXPORT  MYtarget
           LIBRARY DESTINATION lib
           ARCHIVE DESTINATION lib
           RUNTIME DESTINATION bin
           PUBLIC_HEADER DESTINATION include
        )
