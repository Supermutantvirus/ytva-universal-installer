#!/sbin/sh
. /tmp/backuptool.functions
list_files() {
cat <<EOF
app/YouTube/YouTube.apk
EOF
}

SYSAPPFOLDER=/system/app

case "$1" in
backup)
list_files | while read FILE DUMMY; do
    backup_file $S/"$FILE"
done
;;
restore)
list_files | while read FILE REPLACEMENT; do
    R=""
    [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
    [ -f "$C/$S/$FILE" ] && restore_file $S/"$FILE" "$R"
done
;;
pre-backup)
# Stub
;;
post-backup)
# Stub
;;
pre-restore)
# Stub
;;
post-restore)
PWD=$(pwd)
if [ -e /system/system ];then
    SYSAPPFOLDER=/system/system/app
fi
mkdir -p $SYSAPPFOLDER/YouTube/tmp
cd $SYSAPPFOLDER/YouTube/tmp
unzip -o ../YouTube.apk -d > /dev/null 2>&1
mv lib ..
cd ..
rm -rf tmp
cd lib
# I dont know about x86, take care of arm32 and arm64
# Better safe than sorry, make all sorts of symlinks
if [ -e armeabi-v7a ]; then
    ln -s armeabi-v7a armeabi
    ln -s armeabi-v7a arm
fi
if [ -e arm64-v8a ]; then
    ln -s arm64-v8a arm64
fi
cd ..
# Fix permissions
find $SYSAPPFOLDER/YouTube -type f -exec chmod 644 {} \;
find $SYSAPPFOLDER/YouTube -type d -exec chmod 755 {} \;
chmod 755 $SYSAPPFOLDER/YouTube
cd "$PWD"
;;
esac
