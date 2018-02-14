# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "altimeter_pub: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ialtimeter_pub:/home/anjasheppard/landing-site-estimation/src/lse_ws/src/altimeter_pub/msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(altimeter_pub_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/anjasheppard/landing-site-estimation/src/lse_ws/src/altimeter_pub/msg/yocto_msg.msg" NAME_WE)
add_custom_target(_altimeter_pub_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "altimeter_pub" "/home/anjasheppard/landing-site-estimation/src/lse_ws/src/altimeter_pub/msg/yocto_msg.msg" "sensor_msgs/Temperature:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(altimeter_pub
  "/home/anjasheppard/landing-site-estimation/src/lse_ws/src/altimeter_pub/msg/yocto_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Temperature.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/altimeter_pub
)

### Generating Services

### Generating Module File
_generate_module_cpp(altimeter_pub
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/altimeter_pub
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(altimeter_pub_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(altimeter_pub_generate_messages altimeter_pub_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anjasheppard/landing-site-estimation/src/lse_ws/src/altimeter_pub/msg/yocto_msg.msg" NAME_WE)
add_dependencies(altimeter_pub_generate_messages_cpp _altimeter_pub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(altimeter_pub_gencpp)
add_dependencies(altimeter_pub_gencpp altimeter_pub_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS altimeter_pub_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(altimeter_pub
  "/home/anjasheppard/landing-site-estimation/src/lse_ws/src/altimeter_pub/msg/yocto_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Temperature.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/altimeter_pub
)

### Generating Services

### Generating Module File
_generate_module_eus(altimeter_pub
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/altimeter_pub
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(altimeter_pub_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(altimeter_pub_generate_messages altimeter_pub_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anjasheppard/landing-site-estimation/src/lse_ws/src/altimeter_pub/msg/yocto_msg.msg" NAME_WE)
add_dependencies(altimeter_pub_generate_messages_eus _altimeter_pub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(altimeter_pub_geneus)
add_dependencies(altimeter_pub_geneus altimeter_pub_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS altimeter_pub_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(altimeter_pub
  "/home/anjasheppard/landing-site-estimation/src/lse_ws/src/altimeter_pub/msg/yocto_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Temperature.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/altimeter_pub
)

### Generating Services

### Generating Module File
_generate_module_lisp(altimeter_pub
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/altimeter_pub
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(altimeter_pub_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(altimeter_pub_generate_messages altimeter_pub_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anjasheppard/landing-site-estimation/src/lse_ws/src/altimeter_pub/msg/yocto_msg.msg" NAME_WE)
add_dependencies(altimeter_pub_generate_messages_lisp _altimeter_pub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(altimeter_pub_genlisp)
add_dependencies(altimeter_pub_genlisp altimeter_pub_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS altimeter_pub_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(altimeter_pub
  "/home/anjasheppard/landing-site-estimation/src/lse_ws/src/altimeter_pub/msg/yocto_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Temperature.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/altimeter_pub
)

### Generating Services

### Generating Module File
_generate_module_nodejs(altimeter_pub
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/altimeter_pub
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(altimeter_pub_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(altimeter_pub_generate_messages altimeter_pub_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anjasheppard/landing-site-estimation/src/lse_ws/src/altimeter_pub/msg/yocto_msg.msg" NAME_WE)
add_dependencies(altimeter_pub_generate_messages_nodejs _altimeter_pub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(altimeter_pub_gennodejs)
add_dependencies(altimeter_pub_gennodejs altimeter_pub_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS altimeter_pub_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(altimeter_pub
  "/home/anjasheppard/landing-site-estimation/src/lse_ws/src/altimeter_pub/msg/yocto_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Temperature.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/altimeter_pub
)

### Generating Services

### Generating Module File
_generate_module_py(altimeter_pub
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/altimeter_pub
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(altimeter_pub_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(altimeter_pub_generate_messages altimeter_pub_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anjasheppard/landing-site-estimation/src/lse_ws/src/altimeter_pub/msg/yocto_msg.msg" NAME_WE)
add_dependencies(altimeter_pub_generate_messages_py _altimeter_pub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(altimeter_pub_genpy)
add_dependencies(altimeter_pub_genpy altimeter_pub_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS altimeter_pub_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/altimeter_pub)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/altimeter_pub
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(altimeter_pub_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(altimeter_pub_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(altimeter_pub_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/altimeter_pub)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/altimeter_pub
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(altimeter_pub_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(altimeter_pub_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(altimeter_pub_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/altimeter_pub)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/altimeter_pub
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(altimeter_pub_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(altimeter_pub_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(altimeter_pub_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/altimeter_pub)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/altimeter_pub
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(altimeter_pub_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(altimeter_pub_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(altimeter_pub_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/altimeter_pub)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/altimeter_pub\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/altimeter_pub
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(altimeter_pub_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(altimeter_pub_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(altimeter_pub_generate_messages_py sensor_msgs_generate_messages_py)
endif()
