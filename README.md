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


编译
```
cd /path/to/ROYALEFLEX2_CPP/build
cmake ..
make .
./sampleReceiveData
```
