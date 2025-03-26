@echo off
SetLocal EnableExtensions EnableDelayedExpansion
adb kill-server
adb start-server
adb.exe devices
adb root
adb logcat -c


adb push libtttnooskin.so /data/data/com.rekoo.pubgm/lib/libGVoicePlugin.so

adb shell am start -n com.rekoo.pubgm/com.epicgames.ue4.SplashActivity
adb shell sleep 10
cls
echo[
adb logcat | findstr Furious
