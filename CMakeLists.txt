cmake_minimum_required(VERSION 3.5)
project(WBDB VERSION 1.0)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(LIB_MATH "math")
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
install(TARGETS ${PROJECT_NAME} DESTINATION bin)
install(FILES "${PROJECT_BINARY_DIR}/configure.h"  DESTINATION include)