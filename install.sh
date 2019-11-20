SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"
REPLACE="
"


print_modname() {
  ui_print "- Nethunter module v68"
}

# Copy/extract your module files into $MODPATH in on_install.

on_install() {
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d "$MODPATH" >&2
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
  echo '- Installing apk files...'
  apkDir="/data/local/tmp/apks/"
  cd $apkDir || exit

  function readDir(){

    cd $apkDir || exit

    filelist=$(ls "$1")

    for file in $filelist

    do

        installApk "$file"

    done

  }

  function installApk(){

    file=$1

    extension="${file##*.}"

    if [ "$extension" = "apk" ]

    then

        echo "- Installing ""$file""..."
        cp -r -f  /sdcard/apks/*.apk /data/local/tmp/
        pm install "$file"

    else

        echo "- Error: ""$file" "is not an apk file."

    fi

  }

  
  readDir $apkDir
  rm -rf /data/local/tmp/*
}

set_permissions() {
  set_perm_recursive "$MODPATH" 0 0 0755 0644
}
