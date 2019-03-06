from cortex_client import InputMessage, OutputMessage
import requests
import json
import sys
import cortex_client


NAME_COMPANIES_REF = "names_ref"


def get_dataset_refs(params):
    return {
        x["datasetName"]: x["refName"] for x in params["datasetBindings"]
    }

def read_dataset(args, jwt, dsname):

    URL = 'https://api.cortex.insights.ai'
    dc = cortex_client.DatasetsClient(URL, "3", jwt)
    data = dc.get_stream(dsname).read()
    s = data.decode()
    return s.split(',')

def main(params):
    datasetReferences = get_dataset_refs(params)
    parsedArgs = {
        NAME_COMPANIES_REF: datasetReferences.get(NAME_COMPANIES_REF),
        "api_endpoint": params.get("apiEndpoint")
        }

    jwt = params.get("token")
    datasetStream = read_dataset(parsedArgs, jwt, parsedArgs[NAME_COMPANIES_REF])


    msg = InputMessage.from_params(params)
    text = msg.payload.get('text')

    return OutputMessage.create().with_payload({'data': datasetStream}).to_params()
