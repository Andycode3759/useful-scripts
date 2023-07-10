# peak

_Tell me your secrets._

解压一个压缩包，并查看其中的某个文件（使用 `nano` 的查看模式打开）。退出查看后自动删除解压出来的文件。

因为 Ubuntu 自带的图形化压缩软件对带密码的压缩包支持极差，所以就有了这个玩意儿用于浏览一些加密文件。

## 使用

```bash
peak.sh <zip file> <file name>
```

## 环境需求

需要支持 `7z` 和 `nano` 命令（在大多数 Linux 系统下通过可以安装 `p7zip` 和 `nano` 两个包来解决）。
