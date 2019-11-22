![DJY](Images/LOGO.jpg)

# Magisk模块拓展增量包

其他语言: [English](README.md)

* ***当前版本DJY-V67***

* ***相关配套内核[Oneplus6-oneplus6T点击我查看](https://johanlike.github.io/DJY-Oneplus6-or-Oneplus6T-Nethunter-Andrax-Kernel/)***

* ***这个拓展模块适用于所有安卓版本所有已经安装了magisk的安卓手机***

* ***此模块会将所有apk保存在/sdcrad/apks/文件夹中，如果部分apk没有正确安装，那么请手动前往此文件夹进行安装.***

* ***如果你需要添加自己的app，请把app放入到apks文件夹当中，他会自动检测并安装。然后使用 zip -r9 DJY.zip * 命令打包刷入***

* 如果你需要修改自定义开机动画请替换/system/media/bootanimation.zip文件 然后使用 zip -r9 DJY.zip * 命令打包刷入

* Magisk模块拓展增量包是我收集了大部分主流的应用程序，自定义开机动画和无线固件拓展增量包。我会在向Magisk官方提交相关模块和代码，到时候你们就可以直接在MagiskAPP里面下载我的模块了。以下是相关App和固件：

* [点击我下载最新版本Magisk模块增量包](https://github.com/johanlike/DJY-Nethunter-Magisk-Modules/releases/download/DJY-Magisk-modules-V67/DJY-Magisk-modules-V67.zip)***为防止个别有心人员篡改此模块安装包来源，请效验sha1sum值当前sha1sum***：1ab60c5fb63d642a67a8f0b8488f651b8a7d26fc

* [点击我下载最新版本Magisk模块增量包此版本不包含Lucky Patcher](https://github.com/johanlike/DJY-Nethunter-Magisk-Modules/releases/download/DJY-Magisk-modules-V67-NO-Lucky-Patcher/DJY-Magisk-modules-V67-No-Lucky-Patcher.zip) ***为防止个别有心人员篡改此模块安装包来源，请效验sha1sum值***当前sha1sum：aad5cc4fcb8bc3fdebe7871e1714dfca98db6436



```
.
|-- META-INF
|   `-- com
|       `-- google
|           `-- android
|               |-- update-binary
|               `-- updater-script
|-- apks
|   |-- ANDPROX.2.0.5.apk
|   |-- BARCODE.READER.4.7.8.apk
|   |-- DRIVEDROID.0.10.50.apk
|   |-- DROIDDUCKY.apk
|   |-- HIJACKER.1.5.11.apk
|   |-- INTERCEPTER.NG.2.1.apk
|   |-- KERNEL.ADIUTOR.0.9.73.3.apk
|   |-- LINUX.DEPLOY.2.5.0.apk
|   |-- LUCKY.PATCHER.8.6.1.apk
|   |-- MATERIAL.TERMINAL.2.1.0.apk
|   |-- NETHUNTER.DJY.apk
|   |-- PANDWARF.1.6.6.apk
|   |-- PPCONECTOR.1.1.apk
|   |-- REALVNC.3.6.0.apk
|   |-- RF.ANALYZER.1.13.apk
|   |-- RUCKY.1.7.apk
|   |-- SHADOWSOCKS.4.8.5.apk
|   |-- TERMINAL.DJY.apk
|   |-- TERMIUS.4.4.1.apk
|   |-- USBKEYBOARD.UNKNOWN.apk
|   `-- ZANTI.3.19.apk
|-- install.sh
|-- module.prop
`-- system
    |-- bin << Nethunter scripts
    |-- media << boot animation
    `-- vendor
        `-- firmware << firmware drivers
```
