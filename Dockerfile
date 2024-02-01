FROM node:14

RUN apt-get update -y
RUN apt-get install -y xserver-xorg-dev libxi-dev xserver-xorg-dev libxext-dev xvfb

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

COPY screenshot.js ./

RUN mkdir screenshots

# Start the container with the BrowserCubeMap example script
CMD node screenshot.js plotgenie.minefort.com 25565 plotgeniebot
