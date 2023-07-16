# RoyaleFlex2_CPP

如何下载Royale sdk
登录 www.pmdtec.com/software

使用密码完成注册后，输入附赠卡片上的Password

通过邮件下载sdk

本项目通过C++读取点云数据，并展示如何用python获取数据


安装驱动
```
cd /path/of/libroyale
cd driver/udev
sudo cp 10-royale-ubuntu.rules /etc/udev/rules.d
```

更改`CMakeLists.txt`中的
```
list(APPEND CMAKE_PREFIX_PATH "/home/yuxuan/Downloads/libroyale/lib/cmake")
target_include_directories (sampleRetrieveData PRIVATE "/home/yuxuan/Downloads/libroyale/samples/inc")
```


编译并运行
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

‵‵
LCM缓冲区小
``
sudo gedit /etc/sysctl.conf
=====添加=====
net.core.rmem_max=2097152
net.core.rmem_default=2097152
=====更新配置====
sudo sysctl -p
``