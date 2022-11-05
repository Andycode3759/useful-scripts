# car

  *It runs fast.*

__car (Compile And Run)__ 能帮助你用一条命令编译并运行单个的C++程序，同时能够整理好生成的可执行文件，并附带缓存机制。

## 使用

```bash
export PATH=$PATH:/home/the/parking/lot/car
# Add where the script is to PATH, just for looking neat
car mySolutionToTheHardProblem.cpp
# The code will be compiled and run, without an a.out left in your folder
car mySolutionToTheHardProblem.cpp
# If you run the same code twice it will skip the compiling
nano mySolutionToTheHardProblem.cpp
# Do some edits (nano is the best text editor)
car mySolutionToTheHardProblem.cpp
# Then it will compile again
```

## 缓存

所有编译后得到的二进制程序文件都保存在`~/.car_cache`中，按源代码文件的md5值命名。如果不想让磁盘空间被塞爆的话请定期清理：

```bash
rm -r ~/.car_cache
```

## 注意事项

本脚本含一定量的L，自尊心脆弱者慎用。
