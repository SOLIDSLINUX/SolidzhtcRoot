@echo off
cls
REM adb shell rm /storage/ext_sd/PL99IMG.zip > nul
adb push UPDATE-SuperSU-v1.93.zip /storage/ext_sd/ > nul
adb reboot bootloader
echo 看到手機進入 Bootloader 後，請按任一鍵繼續.....
pause > nul
fastboot erase cache
fastboot flash recovery openrecovery-twrp-2.6.0.0-dlxpul.img
rem fastboot flash recovery recovery.img
rem fastboot flash recovery dlxpul-recovery-twrp-2.7.0.0.img
fastboot reboot
echo 請在看到手機重新開機完成後
echo 按下任意鍵繼續
pause > nul
adb wait-for-device reboot recovery
echo 請觀看手機，並依教學指示操作....
echo 操作完後，請按任一鍵回到 Windows .......
pause > nul


#fastboot flash boot boot.img

#官解   cid: HTCCN701
#fastboot oem readcid
fastboot getvar all
fastboot flash unlocktoken Unlock_code.bin
#fastboot oem lock

fastboot oem writecid 11111111
fastboot oem writecid HTC__621
fastboot oem writecid HTCCN701

"D:\Softwares\Root\fastboot-win\hboot_signedbyaa.img"
#hboot
fastboot flash hboot boot.img
fastboot flash hboot hboot_signedbyaa.img

#安装MaximusHD 13.0.0使用TWRP 2.7.0.4k or higher 

@echo off
cls
REM adb shell rm /storage/ext_sd/PL99IMG.zip > nul
adb push UPDATE-SuperSU-v1.93.zip /storage/ext_sd/ > nul
adb reboot bootloader
echo 看到手机进入 Bootloader 后，请按任一键继续.....
pause > nul
fastboot erase cache
fastboot flash recovery openrecovery-twrp-2.6.0.0-dlxpul.img
rem fastboot flash recovery recovery.img
rem fastboot flash recovery recovery-2.8.4.0.img
rem fastboot flash recovery dlxpul-recovery-twrp-2.7.0.0.img
rem fastboot flash recovery CWM6.0.3.7-recovery.img
fastboot reboot
REM fastboot reboot-bootloader
echo 请在看到手机重新开机完成后
echo 按下任意键继续
pause > nul
adb wait-for-device reboot recovery
echo 请观看手机，并依教学指示操作....
echo 操作完后，请按任一键回到 Windows .......
pause > nul
