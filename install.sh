SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false
REPLACE="
"


print_modname() {
  ui_print "*Apk files installer*"
}

on_install() {
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
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d "$MODPATH" >&2
  unzip -o "$ZIPFILE" 'apks/*' -d /sdcard/ >&2
  unzip -o "$ZIPFILE" 'apks/*' -d /data/local/tmp/ >&2
  ui_print "- Installing apk files..."
  apkDir="/data/local/tmp/apks/"
  cd $apkDir || exit
  installAll $apkDir
  rm -rf /data/local/tmp/*
  ui_print "- Now reboot"
}

function installAll(){

   filelist=$(ls "$1")

   for file in $filelist

   do

       installer "$file"

   done

}

function installer(){

   file=$1

   extension="${file##*.}"

   if [ "$extension" = "apk" ]

   then

       ui_print "- Installing ""$file""..."
       cp -r -f  /sdcard/apks/*.apk /data/local/tmp/
       pm install "$file"

   else

       ui_print "- Error: ""$file" "is not an apk file."

   fi

}

set_permissions() {
  set_perm_recursive "$MODPATH" 0 0 0755 0644
}