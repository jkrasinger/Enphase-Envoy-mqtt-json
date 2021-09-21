#!/usr/bin/with-contenv bashio

set -e

bashio::log.info "Creating configuration for ENVOY-MQTT ..."

# Create main config
ENVOY_MQTTHOST=$(bashio::config 'mqtt_host')
ENVOY_MQTTPORT=$(bashio::config 'mqtt_port')
ENVOY_MQTTTOPIC=$(bashio::config 'mqtt_topic')
ENVOY_MQTTUSER=$(bashio::config 'mqtt_username')
ENVOY_MQTTPASS=$(bashio::config 'mqtt_password')
ENVOY_HOST=$(bashio::config 'envoy_host')
ENVOY_PW=$(bashio::config 'envoy_passwd')

export ENVOY_MQTTHOST
export ENVOY_MQTTPORT
export ENVOY_MQTTTOPIC
export ENVOY_MQTTUSER
export ENVOY_MQTTPASS
export ENVOY_HOST
export ENVOY_PW

bashio::log.info "Creating ENVOY-MQTT configuration complete."

cd /home/Enphase-Envoy-mqtt-json
python3 envoy_to_mqtt_json.py

