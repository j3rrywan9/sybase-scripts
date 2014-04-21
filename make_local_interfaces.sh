#!/bin/sh  

IP_ADDRESS=`ifconfig | grep "inet addr" | head -1 | gawk -F: '{ print $2 }' | sed -e "s/ Bcast//" | sed -e "s/ //g"`

cat /opt/sybase/global/interfaces.dcenter_template | sed -e "s/_ip_addr_/$IP_ADDRESS/g" > /opt/sybase/interfaces
cat /opt/sybase/global/interfaces.remote >> /opt/sybase/interfaces
chown sybase:sybase /opt/sybase/interfaces
