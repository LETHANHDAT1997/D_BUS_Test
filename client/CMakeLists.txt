# Building examples

add_executable(obj-manager-client obj-manager-client.cpp)
# target_link_libraries(obj-manager-client sdbus-cpp/sdbus-c++)

find_library(SDBUS_CPP_LIB NAMES libsdbus-c++.so.2 PATHS ../sdbus-cpp/build NO_DEFAULT_PATH)
if(SDBUS_CPP_LIB)
    message("LETHANHDAT ${SDBUS_CPP_LIB}")
    target_link_libraries(obj-manager-client PRIVATE ${SDBUS_CPP_LIB})
endif()

# if(SDBUSCPP_INSTALL)
#     install(TARGETS obj-manager-server DESTINATION ${CMAKE_INSTALL_BINDIR} COMPONENT sdbus-c++-examples)
# endif()
