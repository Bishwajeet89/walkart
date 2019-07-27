#!/bin/bash
CONT_COUNT=$1
echo "Creating $CONT_COUNT Containers.."
sleep 2;
for i in `seq $CONT_COUNT`
do
   echo "========================================="
   echo "Creating walkart$i container.."
   sleep 1
   docker run -it -d -p 8080:8080 --name walkart$i bishk/walkart-img /bin/bash
   echo "walkart$i container is created !"
   echo "========================================="
done
docker inspect --format {{.NetworkSettings.Networks.bridge.IPAddress}} `docker ps -a -q` > Container_IPs.txt
