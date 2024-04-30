# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dobot: 1 messages, 1 services")

set(MSG_I_FLAGS "-Idobot:/home/human/dobot/src/dobot/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dobot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/human/dobot/src/dobot/msg/object.msg" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/human/dobot/src/dobot/msg/object.msg" ""
)

get_filename_component(_filename "/home/human/dobot/src/dobot/srv/CV.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/human/dobot/src/dobot/srv/CV.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dobot
  "/home/human/dobot/src/dobot/msg/object.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)

### Generating Services
_generate_srv_cpp(dobot
  "/home/human/dobot/src/dobot/srv/CV.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)

### Generating Module File
_generate_module_cpp(dobot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dobot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dobot_generate_messages dobot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/human/dobot/src/dobot/msg/object.msg" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/human/dobot/src/dobot/srv/CV.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dobot_gencpp)
add_dependencies(dobot_gencpp dobot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dobot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dobot
  "/home/human/dobot/src/dobot/msg/object.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)

### Generating Services
_generate_srv_eus(dobot
  "/home/human/dobot/src/dobot/srv/CV.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)

### Generating Module File
_generate_module_eus(dobot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dobot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dobot_generate_messages dobot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/human/dobot/src/dobot/msg/object.msg" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/human/dobot/src/dobot/srv/CV.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dobot_geneus)
add_dependencies(dobot_geneus dobot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dobot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dobot
  "/home/human/dobot/src/dobot/msg/object.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)

### Generating Services
_generate_srv_lisp(dobot
  "/home/human/dobot/src/dobot/srv/CV.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)

### Generating Module File
_generate_module_lisp(dobot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dobot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dobot_generate_messages dobot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/human/dobot/src/dobot/msg/object.msg" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/human/dobot/src/dobot/srv/CV.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dobot_genlisp)
add_dependencies(dobot_genlisp dobot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dobot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dobot
  "/home/human/dobot/src/dobot/msg/object.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)

### Generating Services
_generate_srv_nodejs(dobot
  "/home/human/dobot/src/dobot/srv/CV.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)

### Generating Module File
_generate_module_nodejs(dobot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dobot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dobot_generate_messages dobot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/human/dobot/src/dobot/msg/object.msg" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/human/dobot/src/dobot/srv/CV.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dobot_gennodejs)
add_dependencies(dobot_gennodejs dobot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dobot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dobot
  "/home/human/dobot/src/dobot/msg/object.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)

### Generating Services
_generate_srv_py(dobot
  "/home/human/dobot/src/dobot/srv/CV.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)

### Generating Module File
_generate_module_py(dobot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dobot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dobot_generate_messages dobot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/human/dobot/src/dobot/msg/object.msg" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/human/dobot/src/dobot/srv/CV.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dobot_genpy)
add_dependencies(dobot_genpy dobot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dobot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dobot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dobot_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dobot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dobot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dobot_generate_messages_py std_msgs_generate_messages_py)
endif()
