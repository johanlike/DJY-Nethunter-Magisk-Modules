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
├── [       4096 May 12 21:55]  ./META-INF
│   └── [       4096 May 12 21:55]  ./META-INF/com
├── [       4096 May 20 23:02]  ./system
│   ├── [       4096 May 21 17:10]  ./system/vendor         <<<相关的无线固件增量包
│   ├── [       4096 May 24 23:12]  ./system/bin            <<<Nethunter脚本和busybox osm0sis 1.30.1
│   └── [       4096 May 26 19:01]  ./system/media          <<<自定义开机动画
├── [       9644 Jun  2 03:03]  ./install.sh
├── [       4096 Jun  9 22:58]  ./apks
│   ├── [    1567092 Feb 28  2008]  ./apks/RFAnalyzer.apk
│   ├── [    7027446 Feb 28  2008]  ./apks/USBKeyboard.apk
│   ├── [    3703111 Nov 11  2018]  ./apks/shadowsocksr-release.apk
│   ├── [    5288616 Jan 31 12:30]  ./apks/WiFi.apk
│   ├── [    2026553 Feb 15 07:50]  ./apks/marto.rtl_tcp_andro_20_apps.evozi.com.apk
│   ├── [     815360 Mar 12 17:05]  ./apks/com.google.zxing.client.android-4.7.7-107-1042.apk
│   ├── [    4967790 Mar 12 17:19]  ./apks/com.softwarebakery.drivedroid_105000_apps.evozi.com.apk
│   ├── [    2148516 Mar 27 18:22]  ./apks/marto.androsdr2_39_apps.evozi.com.apk
│   ├── [    1150510 Mar 27 20:24]  ./apks/org.hak5.pineappleconnector_2_apps.evozi.com.apk
│   ├── [    2178273 Mar 27 21:08]  ./apks/bs.Avare.ADSB_80_apps.evozi.com.apk
│   ├── [    1519246 Mar 27 21:09]  ./apks/com.sdr_labs.sdroid_1307_apps.evozi.com.apk
│   ├── [    5688667 Mar 27 21:12]  ./apks/com.comthings.pandwarf_10239_apps.evozi.com.apk
│   ├── [    7472625 Apr 16 03:59]  ./apks/andprox-2.0.4.apk
│   ├── [   41671719 Apr 16 10:36]  ./apks/Remote_4.2.2_apk-dl.com.apk
│   ├── [   13024665 Apr 16 10:47]  ./apks/VNC_Viewer_3.5.0.40825_apk-dl.com.apk
│   ├── [    2129924 Apr 16 10:56]  ./apks/GPS_status_1.1.6_apk-dl.com.apk
│   ├── [   13188907 Apr 17 04:40]  ./apks/Speedtest.apk
│   ├── [    1431748 May 26 23:07]  ./apks/hash.apk
│   ├── [    7512395 May 27 00:32]  ./apks/MT.apk
│   ├── [   25107235 May 27 00:43]  ./apks/zAnti3.19.apk
│   ├── [    4275354 May 27 00:44]  ./apks/cSploit-nightly.apk
│   ├── [    5450821 May 27 01:28]  ./apks/Intercepter-NG.2.1.apk
│   ├── [    4804885 May 28 21:44]  ./apks/shadowsocks-arm64-v8a-4.8.0.apk
│   ├── [   10845337 Jun  1 09:19]  ./apks/juicessh-2.1.4.apk
│   ├── [    7553899 Jun  3 08:03]  ./apks/whid.apk
│   ├── [    5643092 Jun  9 22:50]  ./apks/nethunter-app.apk             <<<Android Studio 3.6Canany3(191.5618338)编译于2019-6-9
│   ├── [   11354644 Jun  9 22:52]  ./apks/linux_deploy.apk              <<<Android Studio 3.6Canany3(191.5618338)编译于2019-6-9
│   ├── [    7779063 Jun  9 22:54]  ./apks/Hijacker.apk                  <<<Android Studio 3.6Canany3(191.5618338)编译于2019-6-9
│   ├── [    1320896 Jun  9 22:56]  ./apks/term.apk                      <<<Android Studio 3.6Canany3(191.5618338)编译于2019-6-9
│   └── [   24158447 Jun  9 22:58]  ./apks/droidducky.apk                <<<Android Studio 3.6Canany3(191.5618338)编译于2019-6-9
└── [        191 Jun  9 22:58]  ./module.prop
```