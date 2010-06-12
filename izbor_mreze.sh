#!/bin/bash -x
#
# Skripta kreira jednostavni meni i poziva pojedinu mrezu
#
killall dhcpcd

function cropup ( )
{
iwconfig wlan0 essid "cropup" channel 1 ap 00:23:69:15:5C:EB key CDA079A5E6 mode managed
dhcpcd -I '' -t 40 wlan0
exit 0
return
}

function mi2 ( )
{
iwconfig wlan0 essid "mi2" channel 3 ap 00:18:F8:78:6F:6C key off mode managed
dhcpcd -I '' -t 40 wlan0
exit 0
return
}

function razmjenavjestina ( )
{
iwconfig wlan0 essid "Razmjena" channel 5 ap 00:16:B6:DA:01:25 key 61AB6932F8955F9D89941B194D mode managed
dhcpcd -I '' -t 40 wlan0
exit 0
return
}

while : 
 do 
    clear
    echo "---------------------------------"
    echo " Glavni izbornik "
    echo "---------------------------------"
    echo "[1] CROPUP"
    echo "[2] RAZMJENAVJESTINA"
    echo "[3] MI2"
    echo "[5] Exit/Stop"
    echo "================================="
    echo -n "Unesite broj iz izbornika [1-5]: "
    read mojizbor
    case $mojizbor in 
	1) cropup ;;
	2) razmjenavjestina ;;
	3) mi2 ;;
	5) exit 0 ;;
	*) echo "Opps!!! Molim izaberite 1,2,3 ili 5";
	   echo "Izaberite tipku. . ."; read ;;

    esac
 done

