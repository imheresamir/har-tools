#!/bin/bash

fname=`basename $1 .go`
rpiname="$fname-rpi"

cp $1 "$rpiname.go"

GOARCH=arm GOARM=6 GOOS=linux go build "$rpiname.go"

mv $rpiname bin/$rpiname
rm "$rpiname.go"
