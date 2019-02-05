#!/usr/bin/env bash

# The command expects a file test_req.json in a test folder inside the skill. The file should include all the params including payload and properties.
cortex actions invoke defautlt/echo --params-file test/test_req.json
