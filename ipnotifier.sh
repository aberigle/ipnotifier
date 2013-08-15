#!/bin/sh

EMAIL="_EMAILRECIPENT_"
LOG=~/.iplog

NEWIP=`curl ident.me`

[ -e $LOG ] && OLDIP=`cat $LOG`

if [ "$NEWIP" != "$OLDIP" ]; then
echo "$NEWIP" | mailx -A gmail -s "New IP" $EMAIL
echo $NEWIP > $LOG
fi