![DJY](Images/LOGO.jpg)

# Magisk module

Other Languages: [中文](README_ZH.md)

* ***Current version is DJY-V68***

* ***Related supporting kernel: [DJY kernel](https://johanlike.github.io/DJY-Oneplus6-or-Oneplus6T-Nethunter-Andrax-Kernel/)***

* ***This extension module is available for all Android versions. All Android phones with Magisk installed***

* ***This module will save all apps in /sdcrad/apks folder, if some apk is not installed correctly, please manually go to this folder to install.***

* ***If you need to add your own app, please put the app into the apks folder, it will be automatically detected and installed. The same with boot animation - replace /system/media/bootanimation.zip. Then use the ```zip -r9 Module.zip *``` command to package all files and then flash it***

* See releases to download module

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
