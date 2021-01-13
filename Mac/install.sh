#!/bin/sh
#从jenkins上下载安装包并安装到手机上
apkbranch=$1
apkVersion=$2
wget -O jdb-dev.apk http://client-jenkins.jdb-dev.com:8080/job/Android_CI_Branch_${apkbranch}/${apkVersion}/artifact/Products/jDB-dev-${apkVersion}.apk
adb install /Users/wangning/DeskTop/jDB-dev.apk
rm -f ./jDB-dev.apk
adb shell am start -n com.rrh.jdb.dev/com.rrh.jdb.newmodule.tab.maintab.JDBLaunchActivity