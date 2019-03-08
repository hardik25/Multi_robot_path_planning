# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "planner: 1 messages, 2 services")

set(MSG_I_FLAGS "-Iplanner:/home/siddharth/multi_robo_plan/src/planner/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(planner_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/siddharth/multi_robo_plan/src/planner/msg/agent_status.msg" NAME_WE)
add_custom_target(_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planner" "/home/siddharth/multi_robo_plan/src/planner/msg/agent_status.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/siddharth/multi_robo_plan/src/planner/srv/plan.srv" NAME_WE)
add_custom_target(_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planner" "/home/siddharth/multi_robo_plan/src/planner/srv/plan.srv" ""
)

get_filename_component(_filename "/home/siddharth/multi_robo_plan/src/planner/srv/goal_update.srv" NAME_WE)
add_custom_target(_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planner" "/home/siddharth/multi_robo_plan/src/planner/srv/goal_update.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(planner
  "/home/siddharth/multi_robo_plan/src/planner/msg/agent_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner
)

### Generating Services
_generate_srv_cpp(planner
  "/home/siddharth/multi_robo_plan/src/planner/srv/plan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner
)
_generate_srv_cpp(planner
  "/home/siddharth/multi_robo_plan/src/planner/srv/goal_update.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner
)

### Generating Module File
_generate_module_cpp(planner
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(planner_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(planner_generate_messages planner_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siddharth/multi_robo_plan/src/planner/msg/agent_status.msg" NAME_WE)
add_dependencies(planner_generate_messages_cpp _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddharth/multi_robo_plan/src/planner/srv/plan.srv" NAME_WE)
add_dependencies(planner_generate_messages_cpp _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddharth/multi_robo_plan/src/planner/srv/goal_update.srv" NAME_WE)
add_dependencies(planner_generate_messages_cpp _planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planner_gencpp)
add_dependencies(planner_gencpp planner_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planner_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(planner
  "/home/siddharth/multi_robo_plan/src/planner/msg/agent_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner
)

### Generating Services
_generate_srv_eus(planner
  "/home/siddharth/multi_robo_plan/src/planner/srv/plan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner
)
_generate_srv_eus(planner
  "/home/siddharth/multi_robo_plan/src/planner/srv/goal_update.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner
)

### Generating Module File
_generate_module_eus(planner
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(planner_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(planner_generate_messages planner_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siddharth/multi_robo_plan/src/planner/msg/agent_status.msg" NAME_WE)
add_dependencies(planner_generate_messages_eus _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddharth/multi_robo_plan/src/planner/srv/plan.srv" NAME_WE)
add_dependencies(planner_generate_messages_eus _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddharth/multi_robo_plan/src/planner/srv/goal_update.srv" NAME_WE)
add_dependencies(planner_generate_messages_eus _planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planner_geneus)
add_dependencies(planner_geneus planner_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planner_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(planner
  "/home/siddharth/multi_robo_plan/src/planner/msg/agent_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner
)

### Generating Services
_generate_srv_lisp(planner
  "/home/siddharth/multi_robo_plan/src/planner/srv/plan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner
)
_generate_srv_lisp(planner
  "/home/siddharth/multi_robo_plan/src/planner/srv/goal_update.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner
)

### Generating Module File
_generate_module_lisp(planner
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(planner_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(planner_generate_messages planner_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siddharth/multi_robo_plan/src/planner/msg/agent_status.msg" NAME_WE)
add_dependencies(planner_generate_messages_lisp _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddharth/multi_robo_plan/src/planner/srv/plan.srv" NAME_WE)
add_dependencies(planner_generate_messages_lisp _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddharth/multi_robo_plan/src/planner/srv/goal_update.srv" NAME_WE)
add_dependencies(planner_generate_messages_lisp _planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planner_genlisp)
add_dependencies(planner_genlisp planner_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planner_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(planner
  "/home/siddharth/multi_robo_plan/src/planner/msg/agent_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner
)

### Generating Services
_generate_srv_nodejs(planner
  "/home/siddharth/multi_robo_plan/src/planner/srv/plan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner
)
_generate_srv_nodejs(planner
  "/home/siddharth/multi_robo_plan/src/planner/srv/goal_update.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner
)

### Generating Module File
_generate_module_nodejs(planner
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(planner_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(planner_generate_messages planner_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siddharth/multi_robo_plan/src/planner/msg/agent_status.msg" NAME_WE)
add_dependencies(planner_generate_messages_nodejs _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddharth/multi_robo_plan/src/planner/srv/plan.srv" NAME_WE)
add_dependencies(planner_generate_messages_nodejs _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddharth/multi_robo_plan/src/planner/srv/goal_update.srv" NAME_WE)
add_dependencies(planner_generate_messages_nodejs _planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planner_gennodejs)
add_dependencies(planner_gennodejs planner_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planner_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(planner
  "/home/siddharth/multi_robo_plan/src/planner/msg/agent_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner
)

### Generating Services
_generate_srv_py(planner
  "/home/siddharth/multi_robo_plan/src/planner/srv/plan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner
)
_generate_srv_py(planner
  "/home/siddharth/multi_robo_plan/src/planner/srv/goal_update.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner
)

### Generating Module File
_generate_module_py(planner
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(planner_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(planner_generate_messages planner_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/siddharth/multi_robo_plan/src/planner/msg/agent_status.msg" NAME_WE)
add_dependencies(planner_generate_messages_py _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddharth/multi_robo_plan/src/planner/srv/plan.srv" NAME_WE)
add_dependencies(planner_generate_messages_py _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/siddharth/multi_robo_plan/src/planner/srv/goal_update.srv" NAME_WE)
add_dependencies(planner_generate_messages_py _planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planner_genpy)
add_dependencies(planner_genpy planner_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planner_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(planner_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(planner_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(planner_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(planner_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(planner_generate_messages_py std_msgs_generate_messages_py)
endif()
