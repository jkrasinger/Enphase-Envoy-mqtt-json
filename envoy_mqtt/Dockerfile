ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8
# FROM arm32v7/python:alpine
# FROM amd64/python:alpine
# File Author / Maintainer
MAINTAINER Johann Krasinger

#-------------------------------------------------------------------
# Install dependencies
#-------------------------------------------------------------------
WORKDIR /home

# Copy data for add-on
COPY run.sh /home
RUN chmod a+x /home/run.sh

RUN apk add --no-cache python3 git py3-pip && \
    git clone https://github.com/jkrasinger/Enphase-Envoy-mqtt-json.git && \
    cd Enphase-Envoy-mqtt-json && \
	pip3 install -r requirements.txt

CMD [ "/home/run.sh" ]
