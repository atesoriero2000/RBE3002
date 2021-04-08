# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rbe500: 0 messages, 4 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rbe500_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/get_joint_velocities.srv" NAME_WE)
add_custom_target(_rbe500_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rbe500" "/home/toner/rbe500-ros/src/rbe500/srv/get_joint_velocities.srv" ""
)

get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/pose_input.srv" NAME_WE)
add_custom_target(_rbe500_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rbe500" "/home/toner/rbe500-ros/src/rbe500/srv/pose_input.srv" ""
)

get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/JointControl.srv" NAME_WE)
add_custom_target(_rbe500_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rbe500" "/home/toner/rbe500-ros/src/rbe500/srv/JointControl.srv" ""
)

get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/get_tool_velocity.srv" NAME_WE)
add_custom_target(_rbe500_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rbe500" "/home/toner/rbe500-ros/src/rbe500/srv/get_tool_velocity.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/get_joint_velocities.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rbe500
)
_generate_srv_cpp(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/pose_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rbe500
)
_generate_srv_cpp(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/JointControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rbe500
)
_generate_srv_cpp(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/get_tool_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rbe500
)

### Generating Module File
_generate_module_cpp(rbe500
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rbe500
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rbe500_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rbe500_generate_messages rbe500_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/get_joint_velocities.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_cpp _rbe500_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/pose_input.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_cpp _rbe500_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/JointControl.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_cpp _rbe500_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/get_tool_velocity.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_cpp _rbe500_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rbe500_gencpp)
add_dependencies(rbe500_gencpp rbe500_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rbe500_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/get_joint_velocities.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rbe500
)
_generate_srv_eus(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/pose_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rbe500
)
_generate_srv_eus(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/JointControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rbe500
)
_generate_srv_eus(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/get_tool_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rbe500
)

### Generating Module File
_generate_module_eus(rbe500
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rbe500
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rbe500_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rbe500_generate_messages rbe500_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/get_joint_velocities.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_eus _rbe500_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/pose_input.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_eus _rbe500_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/JointControl.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_eus _rbe500_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/get_tool_velocity.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_eus _rbe500_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rbe500_geneus)
add_dependencies(rbe500_geneus rbe500_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rbe500_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/get_joint_velocities.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rbe500
)
_generate_srv_lisp(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/pose_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rbe500
)
_generate_srv_lisp(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/JointControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rbe500
)
_generate_srv_lisp(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/get_tool_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rbe500
)

### Generating Module File
_generate_module_lisp(rbe500
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rbe500
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rbe500_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rbe500_generate_messages rbe500_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/get_joint_velocities.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_lisp _rbe500_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/pose_input.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_lisp _rbe500_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/JointControl.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_lisp _rbe500_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/get_tool_velocity.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_lisp _rbe500_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rbe500_genlisp)
add_dependencies(rbe500_genlisp rbe500_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rbe500_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/get_joint_velocities.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rbe500
)
_generate_srv_nodejs(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/pose_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rbe500
)
_generate_srv_nodejs(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/JointControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rbe500
)
_generate_srv_nodejs(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/get_tool_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rbe500
)

### Generating Module File
_generate_module_nodejs(rbe500
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rbe500
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rbe500_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rbe500_generate_messages rbe500_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/get_joint_velocities.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_nodejs _rbe500_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/pose_input.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_nodejs _rbe500_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/JointControl.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_nodejs _rbe500_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/get_tool_velocity.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_nodejs _rbe500_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rbe500_gennodejs)
add_dependencies(rbe500_gennodejs rbe500_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rbe500_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/get_joint_velocities.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rbe500
)
_generate_srv_py(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/pose_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rbe500
)
_generate_srv_py(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/JointControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rbe500
)
_generate_srv_py(rbe500
  "/home/toner/rbe500-ros/src/rbe500/srv/get_tool_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rbe500
)

### Generating Module File
_generate_module_py(rbe500
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rbe500
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rbe500_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rbe500_generate_messages rbe500_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/get_joint_velocities.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_py _rbe500_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/pose_input.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_py _rbe500_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/JointControl.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_py _rbe500_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/toner/rbe500-ros/src/rbe500/srv/get_tool_velocity.srv" NAME_WE)
add_dependencies(rbe500_generate_messages_py _rbe500_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rbe500_genpy)
add_dependencies(rbe500_genpy rbe500_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rbe500_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rbe500)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rbe500
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rbe500_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(rbe500_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rbe500)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rbe500
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rbe500_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(rbe500_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rbe500)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rbe500
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rbe500_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(rbe500_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rbe500)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rbe500
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rbe500_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(rbe500_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rbe500)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rbe500\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rbe500
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rbe500_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(rbe500_generate_messages_py sensor_msgs_generate_messages_py)
endif()
