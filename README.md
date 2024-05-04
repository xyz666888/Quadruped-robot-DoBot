# Quadruped-robot-DoBot
Operation code for DoBot robot based on yolo and depth data

## src文件树
```
-src
 -dobot
 -include
  -dobot
   -yolo_fastest // 用于使用yolo，详见https://github.com/hpc203/yolov34-cpp-opencv-dnn
   -coco.names // 可识别目标类型
   -yolo.h 
   -DoBot.h // dobot的头文件
 -launch
  -dobot.launch // 将多个节点整合
 -msg //话题消息自定义数据类型
  -object.msg // 目标数据类型
 -srv // 服务型节点自定义数据类型
  -Avoid.srv // 避障数据类型
  -CV.src // 传递方向
 -src
  -avoid.cpp // 避障
  -bridge_yolo.cpp // 解析yolo数据，调整机器人方向
  -DoBot.cpp // 总
  -test.cpp // 测试（可删除）
  -yolo.cpp // yolo
-CMakeLists.txt
-package.xml
```

## 导入
### 前提
使用Astra相机，并安装了Astra相关的包

### 修改
1.删除build文件夹，重新编译
2.修改launch文件，删除<include>一行代码
3.修改devel/_setup.util.py 删除271行/home/human/ros_astra/devel部分和前面的";"
备注：以上是为了让astra相机的launch启动配合本项目里的yolo文件。

### 使用
如果使用lauch文件
```shell
source ./devel/setup.bash
roslaunch dobot dobot.launch
```
多节点一起
在Astra包下
```shell
source ./devel/setup.bash
rosrun astra_camera 相机名.launch
```
在该包下
```shell
source ./devel/setup.bash
rosrun dobot yolo
rosrun dobot bridge_yolo
rosrun dobot avoid
rosrun dobot DoBot
```

