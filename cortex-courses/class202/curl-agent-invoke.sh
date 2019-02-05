#!/bin/bash

function get_activation_response(){
    curl -s -X GET https://api.cortex-dev.insights.ai/v3/agents/services/activations/${1} \
        -H 'Cache-Control: no-cache' \
        -H 'Content-Type: application/json' \
        -H "Authorization: Bearer $(jq -r '.profiles.default.token' ~/.cortex/config)" 
}

function get_status_of_activation(){
    get_activation_response "${1}" | jq -r '.activation.status'
}

AGENT_SERVICE_NAME=input
AGENT_SERVICE_ACTIVATION_RESP=$(curl -s -X POST https://api.cortex-dev.insights.ai/v3/agents/default/echo/services/${AGENT_SERVICE_NAME} \
-H 'Cache-Control: no-cache' \
-H 'Content-Type: application/json' \
-H "Authorization: Bearer $(jq -r '.profiles.default.token' ~/.cortex/config)" \
-d '{"payload":{"text":"Hello world!"}}')

ACTIVATION_ID=$(echo ${AGENT_SERVICE_ACTIVATION_RESP} | jq -r '.activationId')

echo Agent Service Activated with name [${AGENT_SERVICE_NAME}] activated with Activation ID [${ACTIVATION_ID}]

while ( get_status_of_activation "${ACTIVATION_ID}" | grep 'PENDING' 1>/dev/null ) ;
do
    echo Activation with ID [${ACTIVATION_ID}] is still PENDING
    sleep 1
done


echo Activation with ID [${ACTIVATION_ID}] successfully completed with response.
get_activation_response "${ACTIVATION_ID}" | jq .


