#! /bin/bash
echo ************************CleanUp Mine Virus************************
echo                         
echo ***************Step1 crontab CleanUp***************
crontab -l | grep -v 'somescript' | crontab -
echo "somescript/.somescript crontab cleanup"

echo ***************Step2 Service CleanUp***************
systemctl stop warmup.service
echo "Service warmup stop"
systemctl disable xinetd.service
systemctl stop xinetd.service
echo "Service xinetd stop"

echo ***************Step3 port 757/703/999 CleanUp***************
process_id=`lsof -i:757|grep -w "TCP"|awk '{print $2}'|awk 'NR==1{print}'`
if [ "$process_id"="" ]
	then
		echo "port 757 not open"
else
	
	kill -9 $process_id
	echo "port 757 process cleanup"
fi
process_id=`lsof -i:703|grep -w "TCP"|awk '{print $2}'|awk 'NR==1{print}'`
if [ "$process_id"="" ]
	then
		echo "port 703 not open"
else
	
	kill -9 $process_id
	echo "port 703 process cleanup"
fi
process_id=`lsof -i:999|grep -w "TCP"|awk '{print $2}'|awk 'NR==1{print}'`
if [ "$process_id"="" ]
	then
		echo "port 999 not open"
else
	
	kill -9 $process_id
	echo "port 999 process cleanup"
fi

echo ***************Step4 file CleanUp***************
rm -rf ~/.warmup/*
find / -name ".warmup" | xargs chattr -i -a
find / -name ".warmup" | xargs rm -rf
echo "Dir /warmup/* delete Done"

rm -rf /etc/alternatives/ip.txt
echo "Files alternatives/ip.txt delete Done"

find / -name "warmup" | xargs chattr -i -a
find / -name "warmup" | xargs rm -rf
echo "File warmup delete Done"

find / -name "warmup.pid" | xargs chattr -i -a
find / -name "warmup.pid" | xargs rm -rf
echo "File warmup.pid delete Done"

find / -name "warmup.service" | xargs chattr -i -a
find / -name "warmup.service" | xargs rm -rf
echo "File warmup.service delete Done"

find / -name "somescript" | xargs chattr -i -a
find / -name "somescript" | xargs rm -rf
echo "File somescript delete Done"

find / -name ".somescript" | xargs chattr -i -a
find / -name ".somescript" | xargs rm -rf
echo "File .somescript delete Done"

rm -rf /etc/xinetd.d/http_forward
echo "File http_forward delete Done"

rm -rf /etc/xinetd.d/smtp_forward
echo "File smtp_forward delete Done"