# win32 编译环境搭建

## 1_使用说明

打开 **x86 Native Tools Command Prompt for VS 2019.bat** 进入到当前git目录，后续编译就用这个终端进行编译

```
SET PATH=%cd%\Strawberry\perl\bin;%cd%\Python27;%cd%\NASM;%cd%\jom;%cd%\cmake\bin;%cd%\yasm;%PATH%

```



##  2_安装部署说明

只适用于第一次使用，后续通过git仓库更新

- Download **Strawberry Perl** installer from http://strawberryperl.com/ and install to ***BuildPath\*\ThirdParty\Strawberry**
- Download **NASM** installer from [http://www.nasm.us](http://www.nasm.us/) and install to ***BuildPath\*\ThirdParty\NASM**
- Download **Yasm** executable from http://yasm.tortall.net/Download.html, rename to *yasm.exe* and put to ***BuildPath\*\ThirdParty\yasm**
- Download **MSYS2** installer from http://www.msys2.org/ and install to ***BuildPath\*\ThirdParty\msys64**
- Download **jom** archive from http://download.qt.io/official_releases/jom/jom.zip and unpack to ***BuildPath\*\ThirdParty\jom** 现在已经下载不到了，安装了qt环境的有此文件 `D:\Qt\Tools\QtCreator\bin\jom.exe`
- Download **Python 2.7** installer from https://www.python.org/downloads/ and install to ***BuildPath\*\ThirdParty\Python27**
- Download **CMake** installer from https://cmake.org/download/ and install to ***BuildPath\*\ThirdParty\cmake** 可以直接下载压缩包
- Download **Ninja** executable from https://github.com/ninja-build/ninja/releases/download/v1.7.2/ninja-win.zip and unpack to ***BuildPath\*\ThirdParty\Ninja**
- Download **Git** installer from https://git-scm.com/download/win and install it.



| 模块            | 版本     | 说明   |
| --------------- | -------- | ------ |
| strawberry perl | 5.32.1.1 | win32  |
| nasm            | 2.15.05  | win32  |
| yasm            | 1.3.0    | win32  |
| msys2           | 20210228 | x86_64 |
| jom             | qt版本   |        |
| python2.7       | 2.7.16   | Win32  |
| cmake           | 3.20.0   | Win32  |
| ninja           | 1.7.2    |        |

