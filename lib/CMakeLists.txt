project(lib)
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src SOURCE_PATH_LIB)

add_library(${LIB_MATH} SHARED ${SOURCE_PATH_LIB})
target_link_directories(${LIB_MATH} INTERFACE
                       "${CMAKE_CURRENT_SOURCE_DIR}/inc" )
set_target_properties(${LIB_MATH}  PROPERTIES PUBLIC_HEADER  
              "${CMAKE_CURRENT_SOURCE_DIR}/inc/math.h")
#install(TARGETS ${LIB_MATH}  DESTINATION lib)
#install(FILES "${CMAKE_CURRENT_SOURCE_DIR}/inc/math.h" DESTINATION include)

