# node-red-homekit
Docker image for Node-Red with Homekit integration.

This image installs the following nodes through NPM:
 node-red-contrib-blynk-ws
 node-red-contrib-os
 node-red-contrib-cpu
 node-red-dashboard
 
## Volume Persistance
Persistence is recommended to save node-red data directory outside the container, as to not loose node-red data (flows etc) after a restart of the container. This container runs as user node-red, which means this user needs write-access to node-red data directory. Follow these steps to run this container.

`sudo adduser --uid 1001 --no-create-home --disabled-password node-red` // Creates a user node-red on the host without a home directory and without password.

`mkdir ~/node_red_data` // Creates a directory on the host.

`chown -R node-red:node-red ~/node_red_data` // Sets the ownership to user node-red.

Run Container with the following command:

`docker run -d --network host --name node-red-homekit -e HOST_NAME=$HOSTNAME -v ~/node_red_data:/data idumzaes/node-red-homekit`
