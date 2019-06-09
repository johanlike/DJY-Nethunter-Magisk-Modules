##########################################################################################
#
# Magisk Module Installer Script
#
##########################################################################################
##########################################################################################
#
# Instructions:
#
# 1. Place your files into system folder (delete the placeholder file)
# 2. Fill in your module's info into module.prop
# 3. Configure and implement callbacks in this file
# 4. If you need boot scripts, add them into common/post-fs-data.sh or common/service.sh
# 5. Add your additional or modified system properties into common/system.prop
#
##########################################################################################

##########################################################################################
# Config Flags
##########################################################################################

# Set to true if you do *NOT* want Magisk to mount
# any files for you. Most modules would NOT want
# to set this flag to true
SKIPMOUNT=false

# Set to true if you need to load system.prop
PROPFILE=false

# Set to true if you need post-fs-data script
POSTFSDATA=false

# Set to true if you need late_start service script
LATESTARTSERVICE=false

##########################################################################################
# Replace list
##########################################################################################

# List all directories you want to directly replace in the system
# Check the documentations for more info why you would need this

# Construct your list in the following format
# This is an example
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construct your own list here
REPLACE="
"

##########################################################################################
#
# Function Callbacks
#
# The following functions will be called by the installation framework.
# You do not have the ability to modify update-binary, the only way you can customize
# installation is through implementing these functions.
#
# When running your callbacks, the installation framework will make sure the Magisk
# internal busybox path is *PREPENDED* to PATH, so all common commands shall exist.
# Also, it will make sure /data, /system, and /vendor is properly mounted.
#
##########################################################################################
##########################################################################################
#
# The installation framework will export some variables and functions.
# You should use these variables and functions for installation.
#
# ! DO NOT use any Magisk internal paths as those are NOT public API.
# ! DO NOT use other functions in util_functions.sh as they are NOT public API.
# ! Non public APIs are not guranteed to maintain compatibility between releases.
#
# Available variables:
#
# MAGISK_VER (string): the version string of current installed Magisk
# MAGISK_VER_CODE (int): the version code of current installed Magisk
# BOOTMODE (bool): true if the module is currently installing in Magisk Manager
# MODPATH (path): the path where your module files should be installed
# TMPDIR (path): a place where you can temporarily store files
# ZIPFILE (path): your module's installation zip
# ARCH (string): the architecture of the device. Value is either arm, arm64, x86, or x64
# IS64BIT (bool): true if $ARCH is either arm64 or x64
# API (int): the API level (Android version) of the device
#
# Availible functions:
#
# ui_print <msg>
#     print <msg> to console
#     Avoid using 'echo' as it will not display in custom recovery's console
#
# abort <msg>
#     print error message <msg> to console and terminate installation
#     Avoid using 'exit' as it will skip the termination cleanup steps
#
# set_perm <target> <owner> <group> <permission> [context]
#     if [context] is empty, it will default to "u:object_r:system_file:s0"
#     this function is a shorthand for the following commands
#       chown owner.group target
#       chmod permission target
#       chcon context target
#
# set_perm_recursive <directory> <owner> <group> <dirpermission> <filepermission> [context]
#     if [context] is empty, it will default to "u:object_r:system_file:s0"
#     for all files in <directory>, it will call:
#       set_perm file owner group filepermission context
#     for all directories in <directory> (including itself), it will call:
#       set_perm dir owner group dirpermission context
#
##########################################################################################
##########################################################################################
# If you need boot scripts, DO NOT use general boot scripts (post-fs-data.d/service.d)
# ONLY use module scripts as it respects the module status (remove/disable) and is
# guaranteed to maintain the same behavior in future Magisk releases.
# Enable boot scripts by setting the flags in the config section above.
##########################################################################################

# Set what you want to display when installing your module

print_modname() {
  ui_print "*******************************"
  ui_print "NH Wireless Firmware And Apps  "
  ui_print "-      D      J     Y          "
  ui_print "*******************************"
}

# Copy/extract your module files into $MODPATH in on_install.

on_install() {
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  unzip -o "$ZIPFILE" 'apks/*' -d /sdcard/ >&2
  unzip -o "$ZIPFILE" 'apks/*' -d /data/local/tmp/ >&2
      ui_print "##################################################"
ui_print "##                                              ##"
ui_print "##  88      a8P         db        88        88  ##"
ui_print "##  88    .88'         d88b       88        88  ##"
ui_print "##  88   88'          d8''8b      88        88  ##"
ui_print "##  88 d88           d8'  '8b     88        88  ##"
ui_print "##  8888'88.        d8YaaaaY8b    88        88  ##"
ui_print "##  88P   Y8b      d8''''''''8b   88        88  ##"
ui_print "##  88     '88.   d8'        '8b  88        88  ##"
ui_print "##  88       Y8b d8'          '8b 888888888 88  ##"
ui_print "##                                              ##"
ui_print "################### NetHunter ####################"
ui_print          "******************************"
ui_print          "  Nethunter  APPS   Install"
ui_print           " D           J        Y   "
ui_print          "******************************"
  echo '============= start install apk ============='
apkDir="/data/local/tmp/apks/"
cd $apkDir

function readDir(){

   cd $apkDir

   filelist=`ls $1`

   for file in $filelist

   do


       installApk $file

   done

}

function installApk(){

   file=$1

   extension="${file##*.}"

   if [ "$extension" = "apk" ]

   then

       echo "install "$file" ..."
       cp -r -f  /sdcard/apks/*.apk /data/local/tmp/
       pm install $file

   else

       echo "Error:"$file "is not apk file."

   fi

}
readDir $apkDir
    ui_print "##################################################"
ui_print "##                                              ##"
ui_print "##  88      a8P         db        88        88  ##"
ui_print "##  88    .88'         d88b       88        88  ##"
ui_print "##  88   88'          d8''8b      88        88  ##"
ui_print "##  88 d88           d8'  '8b     88        88  ##"
ui_print "##  8888'88.        d8YaaaaY8b    88        88  ##"
ui_print "##  88P   Y8b      d8''''''''8b   88        88  ##"
ui_print "##  88     '88.   d8'        '8b  88        88  ##"
ui_print "##  88       Y8b d8'          '8b 888888888 88  ##"
ui_print "##                                              ##"
ui_print "################### NetHunter ####################"
ui_print          "******************************"
ui_print          "  Nethunter  busybox    Install"
ui_print           " D           J        Y   "
ui_print          "******************************"
ui_print "Installing...";
touch /data/adb/service.d/busybox.sh
chmod 777 /data/adb/service.d/busybox.sh
echo "#!/system/bin/sh" >>/data/adb/service.d/busybox.sh
echo "sleep 15" >>/data/adb/service.d/busybox.sh
echo "mount -o remount,rw /" >> /data/adb/service.d/busybox.sh
echo "mount -o remount,rw /system" >>/data/adb/service.d/busybox.sh
echo "chmod 777 /system/bin/busybox" >>/data/adb/service.d/busybox.sh
echo "/system/bin/busybox  --install -s  /system/bin/" >>/data/adb/service.d/busybox.sh
echo "/system/bin/busybox  --install -s  /system/xbin/" >>/data/adb/service.d/busybox.sh
echo "rm -rf /data/adb/service.d/busybox.sh" >>/data/adb/service.d/busybox.sh
rm -rf /data/local/tmp/*
ui_print "- Install All OK Please Reboot"
}




# Only some special files require specific permissions
# This function will be called after on_install is done
# The default permissions should be good enough for most cases

set_permissions() {
  # The following is the default rule, DO NOT remove
  set_perm_recursive $MODPATH 0 0 0755 0644

  # Here are some examples:
  # set_perm_recursive  $MODPATH/system/lib       0     0       0755      0644
  # set_perm  $MODPATH/system/bin/app_process32   0     2000    0755      u:object_r:zygote_exec:s0
  # set_perm  $MODPATH/system/bin/dex2oat         0     2000    0755      u:object_r:dex2oat_exec:s0
  # set_perm  $MODPATH/system/lib/libart.so       0     0       0644
}

# You can add more functions to assist your custom script code
