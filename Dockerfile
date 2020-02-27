FROM raymondmm/node-red-homekit:latest-minimal-arm64v8

RUN npm install node-red-contrib-sonoff-tasmota \
 node-red-contrib-blynk-ws \
 node-red-contrib-os \
 node-red-contrib-cpu \
 node-red-contrib-node-lifx \
 node-red-dashboard

VOLUME ["/data"]
EXPOSE 1880

ENV FLOWS=flows.json

CMD ["npm", "start", "--", "--userDir", "/data"]
