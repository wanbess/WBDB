project(lib)
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src SOURCE_PATH_LIB)
set(LIB_NAME "math")
add_library(${LIB_NAME}  ${SOURCE_PATH_LIB})
target_link_directories(${LIB_NAME} INTERFACE
                       "${CMAKE_CURRENT_SOURCE_DIR}/inc" )
install(TARGETS ${LIB_NAME}  DESTINATION lib)
install(FILES "${CMAKE_CURRENT_SOURCE_DIR}/inc/math.h" DESTINATION include)
