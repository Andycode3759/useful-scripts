# car

_It runs fast._

**car (Compile And Run)** 能帮助你用一条命令编译并运行单个的 C++程序，同时能够整理好生成的可执行文件，并附带缓存机制。

## 使用

```bash
cd car
chmod +x car.sh
# 赋予执行权限
export PATH=$PATH:$(pwd)
# 添加进PATH环境变量以便调用

car.sh p10086.cpp
# 自动编译并运行代码，并且在程序退出后自动清理二进制程序文件
car.sh p10086.cpp
# 多次运行同一份代码会跳过编译，直接复制之前的编译结果并运行
nano p10086.cpp
# 编辑一下
car.sh p10086.cpp
# 此时又会重新编译
```

## 缓存

所有编译后得到的二进制程序文件都保存在`~/.car_cache`中，按源代码文件的 md5 值命名。如果不想让磁盘空间被塞爆的话请定期清理：

```bash
rm -r ~/.car_cache
```

## 注意事项

- 默认编译选项：`-O2 -Wall -Wno-unused-result`
- 本脚本含一定量的 L，自尊心脆弱者慎用。
