#!/bin/bash

/usr/bin/expect -c "
	spawn ssh bbsu@ptt.cc
	match_max 100000
	expect \"*請輸入代號*\"
	sleep 0.5
	send \"yourUserName\r\n\"
	sleep 0.5
	expect \"*密碼*\"
	sleep 0.5
	send \"yourPassword\r\n\"
	interact
"
