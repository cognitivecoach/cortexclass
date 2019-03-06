## Skill development
This skill utilizes the Cortex function service to execute custom code.

  
Wrapper scripts are provided to assist in developing and deploying your skill.
* `build-function.sh` packages the function in build/function.zip
* `deploy-function.sh` builds and deploys the function via Cortex's function apis
* `deploy-skill.sh` deploys the skill definition to Cortex's skill catalog


Save dataset.
* cortex datasets save names-dataset.json

Upload CSV to managed content.
* cortex content upload "cortex/names.csv" names.csv

For more information: https://docs.cortex.insights.ai
