#!/bin/bash

# sysinfo.sh
# ~~~~~~~~~~

# All system information in json

# :copyright: (c) 2012 by Alexandr Lispython (alex@obout.ru).
# :license: BSD, see LICENSE for more details.
# :github: http://github.com/Lispython/sysinfo.sh


SYSINFO_VERSION="0.0.1"
SYSINFO_LICENCE="BSD"
SYSINFO_GITHUB="http://github.com/Lispython/sysinfo.sh"

lowercase(){
    echo "$1" | sed "y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/"
}

print_key(){
    echo -e "\""$1"\": \""$2"\""

   if [ -z "$3" ]
   then
     echo ""
   else
     echo ","
   fi
}

open_brace(){
    echo -e "{"
}

close_brace(){
    echo -e "}"
}

hostname_fqdn=`hostname --fqdn`
hostname=`hostname`
uptime=`uptime`
OS=`lowercase \`uname\``


kernel[machine]=`uname -m`
kernel[name]=`uname -n`
kernel[release]=`uname -r`
kernel[os]=`uname -r`
kernel[version]=`uname -v`

#echo ${kernel[machine]}

open_brace

print_key "hostname" "$hostname" ","
print_key "hostname_fqdn" "$hostname_fqdn" ","
print_key "uptime" "$uptime" ","

echo -e "\"kernel\": {"

print_key "machine" "`uname -m`" ","
print_key "name" "`uname -n`" ","
print_key "release" "`uname -r`" ","
print_key "os" "`uname -o`" ","
print_key "version"  "`uname -v`"

close_brace

echo -e ","

echo -e "\"sysinfo\": {"

print_key "version" $SYSINFO_VERSION ","
print_key "github" $SYSINFO_GITHUB ","
print_key "license" $SYSINFO_LICENCE

close_brace


# Make etc passwd

#cat /etc/passwd | awk -F: '{print "$1"":\{home: "$3", gid: "$2", "uid: "$3"\}"}'


close_brace