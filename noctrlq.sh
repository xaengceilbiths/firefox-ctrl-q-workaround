#!/bin/bash

W=`xprop -root _NET_ACTIVE_WINDOW | awk '{print $NF}'`
S1=`xprop -id ${W} |awk '/WM_CLASS/{print $4}'`                                 
if [ $S1 != '"Firefox"' ]; then
	xvkbd -xsendevent -text "\Cq"
#	echo $S1
fi

