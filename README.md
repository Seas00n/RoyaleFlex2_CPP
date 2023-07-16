# RoyaleFlex2_CPP

## 如何配置Royale sdk
登录 www.pmdtec.com/software

使用密码完成注册后，输入附赠卡片上的Password

通过邮件下载sdk

本项目通过C++读取点云数据，并展示如何用python获取数据


### 安装驱动
```
cd /path/of/libroyale
cd driver/udev
sudo cp 10-royale-ubuntu.rules /etc/udev/rules.d
```

### 更改`CMakeLists.txt`中的路径（e.g.）
```
list(APPEND CMAKE_PREFIX_PATH "/home/xxx/Downloads/libroyale/lib/cmake")
target_include_directories (sampleRetrieveData PRIVATE "/home/xxx/Downloads/libroyale/samples/inc")
```


### 编译并运行
```
cd /path/to/ROYALEFLEX2_CPP/build
cmake ..
make
./sampleReceiveData
```

vscode编辑前`ctrl+shift+P`选择`c/c++:Edit Configurations(JSON)`生成`c_cpp_properties.json`,配置`includePath`
```
"includePath": [
                "${workspaceFolder}/**",
                "/home/yuxuan/Downloads/libroyale/include/**",
                "/home/yuxuan/Downloads/libroyale/samples/inc/**"
            ],
```
即可找到对应的头文件

## 使用LCM和Python进行通信

LCM（Lightweight Communications and Marshalling） 是一组用于消息传递和数据封送的库和工具。是一种针对高带宽、低延迟、实时性要求高的场景下的通讯工具。

在机器人和自动驾驶系统中，LCM可以作为ROS的替代品，用于完成进程间、设备间的通讯。

LCM安装参考：https://www.guyuehome.com/24279

LCM-Spy安装参考：https://zhuanlan.zhihu.com/p/621943685

由于点云数据较大，需要调整LCM缓冲区大小

```
sudo gedit /etc/sysctl.conf
=====添加=====
net.core.rmem_max=2097152
net.core.rmem_default=2097152
=====更新配置====
sudo sysctl -p
```
lcm消息定义在`lcm_msg/pcd_data.lcm`中，点云数据由`float`转换为`int16_t`从C++发送并在Python中解码

```
package pcd_lcm;

struct pcd_xyz
{
    int16_t pcd_x[38528];//pcd_x*300+10000
    int16_t pcd_y[38528];//pcd_y*300+10000
    int16_t pcd_z[38528];//pcd_z*300+10000
}
```
每秒15帧，最大点云量38528

如果更改了pcd_data.lcm，需要重新生成对应头文件
```
lcm-gen -p pcd_data.lcm
lcm-gen -x pcd_data.lcm
```