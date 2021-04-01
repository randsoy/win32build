# win32 编译环境搭建

## 1_使用说明

打开 **x86 Native Tools Command Prompt for VS 2019.bat** 进入到当前git目录，后续编译就用这个终端进行编译

```basic
SET PATH=%cd%\Strawberry\perl\bin;%cd%\Python27;%cd%\NASM;%cd%\jom;%cd%\cmake\bin;%cd%\yasm;%cd%\ninja;%cd%\gyp;%PATH%

```

## 2_编译普通的第三方库

```basic
git clone https://github.com/desktop-app/lzma.git
cd lzma\C\Util\LzmaLib
msbuild LzmaLib.sln /property:Configuration=Debug /property:Platform="x86"
msbuild LzmaLib.sln /property:Configuration=Release /property:Platform="x86"
cd ..\..\..\..

git clone https://github.com/openssl/openssl.git openssl_1_1_1
cd openssl_1_1_1
git checkout OpenSSL_1_1_1-stable
perl Configure no-shared no-tests debug-VC-WIN32
nmake
mkdir out32.dbg
move libcrypto.lib out32.dbg
move libssl.lib out32.dbg
move ossl_static.pdb out32.dbg\ossl_static
nmake clean
move out32.dbg\ossl_static out32.dbg\ossl_static.pdb
perl Configure no-shared no-tests VC-WIN32
nmake
mkdir out32
move libcrypto.lib out32
move libssl.lib out32
move ossl_static.pdb out32
cd ..

git clone https://github.com/desktop-app/zlib.git
cd zlib\contrib\vstudio\vc14
msbuild zlibstat.vcxproj /property:Configuration=Debug /property:Platform="x86"
msbuild zlibstat.vcxproj /property:Configuration=ReleaseWithoutAsm /property:Platform="x86"
cd ..\..\..\..

git clone -b v4.0.1-rc2 https://github.com/mozilla/mozjpeg.git
cd mozjpeg
cmake . ^
    -G "Visual Studio 16 2019" ^
    -A Win32 ^
    -DWITH_JPEG8=ON ^
    -DPNG_SUPPORTED=OFF
cmake --build . --config Debug
cmake --build . --config Release
cd ..

git clone https://github.com/kcat/openal-soft.git
cd openal-soft
git checkout openal-soft-1.21.0
cd build
cmake .. ^
    -G "Visual Studio 16 2019" ^
    -A Win32 ^
    -D LIBTYPE:STRING=STATIC ^
    -D FORCE_STATIC_VCRT=ON
msbuild OpenAL.vcxproj /property:Configuration=Debug
msbuild OpenAL.vcxproj /property:Configuration=RelWithDebInfo
cd ..\..

git clone https://github.com/google/breakpad
cd breakpad
git checkout a1dbcdcb43
::git apply ../patches/breakpad.diff
cd src
git clone https://github.com/google/googletest testing
cd client\windows
gyp --no-circular-check breakpad_client.gyp --format=ninja
cd ..\..
ninja -C out/Debug common crash_generation_client exception_handler
ninja -C out/Release common crash_generation_client exception_handler
cd tools\windows\dump_syms
gyp dump_syms.gyp
msbuild dump_syms.vcxproj /property:Configuration=Release
cd ..\..\..\..\..

git clone https://github.com/telegramdesktop/opus.git
cd opus
git checkout tdesktop
cd win32\VS2015
msbuild opus.sln /property:Configuration=Debug /property:Platform="Win32"
msbuild opus.sln /property:Configuration=Release /property:Platform="Win32"

cd ..\..\..\..
SET PATH_BACKUP_=%PATH%
SET PATH=%cd%\ThirdParty\msys64\usr\bin;%PATH%
cd Libraries

git clone https://github.com/FFmpeg/FFmpeg.git ffmpeg
cd ffmpeg
git checkout release/4.2

set CHERE_INVOKING=enabled_from_arguments
set MSYS2_PATH_TYPE=inherit
bash --login ../patches/build_ffmpeg_win.sh

SET PATH=%PATH_BACKUP_%
cd ..

SET LibrariesPath=%cd%
git clone git://code.qt.io/qt/qt5.git qt_5_15_2
cd qt_5_15_2
perl init-repository --module-subset=qtbase,qtimageformats
git checkout v5.15.2
git submodule update qtbase qtimageformats
cd qtbase
for /r %i in (..\..\patches\qtbase_5_15_2\*) do git apply %i
cd ..

configure ^
    -prefix "%LibrariesPath%\Qt-5.15.2" ^
    -debug-and-release ^
    -force-debug-info ^
    -opensource ^
    -confirm-license ^
    -static ^
    -static-runtime ^
    -no-opengl ^
    -openssl-linked ^
    -I "%LibrariesPath%\openssl_1_1_1\include" ^
    OPENSSL_LIBS_DEBUG="%LibrariesPath%\openssl_1_1_1\out32.dbg\libssl.lib %LibrariesPath%\openssl_1_1_1\out32.dbg\libcrypto.lib Ws2_32.lib Gdi32.lib Advapi32.lib Crypt32.lib User32.lib" ^
    OPENSSL_LIBS_RELEASE="%LibrariesPath%\openssl_1_1_1\out32\libssl.lib %LibrariesPath%\openssl_1_1_1\out32\libcrypto.lib Ws2_32.lib Gdi32.lib Advapi32.lib Crypt32.lib User32.lib" ^
    -I "%LibrariesPath%\mozjpeg" ^
    LIBJPEG_LIBS_DEBUG="%LibrariesPath%\mozjpeg\Debug\jpeg-static.lib" ^
    LIBJPEG_LIBS_RELEASE="%LibrariesPath%\mozjpeg\Release\jpeg-static.lib" ^
    -mp ^
    -nomake examples ^
    -nomake tests ^
    -platform win32-msvc

jom -j8
jom -j8 install
cd ..
```

##  安装部署说明

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

