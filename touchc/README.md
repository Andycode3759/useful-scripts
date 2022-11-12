# touchc

  *Start quickly.*

__touchc__ 可以用于从模板快速~~复制~~创建文件。

## 使用

```bash
cd touchc
chmod +x touchc.sh
# Give executing permission
export PATH=$PATH:$(pwd)
# Add into PATH, just for looking neat

touchc p10086.cpp c++
# Copy the template file 'c++' into ./p.10086.cpp
touchc p10086.cpp
# Use the default template
touchc luacode.lua lua
# Templates are not binded with file extensions, so you have to specify the template name when not using the default one
```

## 配置

配置文件位于`~/.touchc`目录中。目录中的每一个文件都是一个模板，以文件名作为区分。例如你可以创建一个`~/.touchc/c++`文件作为C++源代码的模板。`_default`文件保存默认模板名（默认内容为`c++`）。
