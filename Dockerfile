FROM nrchkb/node-red-homekit

RUN npm install node-red-contrib-tasmota \
 node-red-contrib-os \
 node-red-contrib-cpu \
 node-red-contrib-node-lifx \
 node-red-dashboard

VOLUME ["/data"]
EXPOSE 1880

ENV FLOWS=flows.json

CMD ["npm", "start", "--", "--userDir", "/data"]
