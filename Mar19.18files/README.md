# cortex-courses
Repository containing all of the Cortex Courses created by the SAM Team. These are meant to be used only in the classes that are taught, and then by the students who were a part of them. 

# Class 121
Hello World 


Instructions: 
Open the hello_world.ipynb notebook in Skill Lab. Proceed through each cell, making sure to replace '<your_initials>' where necessary. 

# Class 122
Echo Dataset

Instructions:
This course should be run in the CLI. Outside of Skill Lab, download the repo and go into the echo-dataset folder. 

From there, run './deploy-function.sh', followed by './deploy-skill.sh'. 

If these commands do not work, make sure to set the files to executable first by typing 'chmod +x deploy-function.sh', 'chmod +x deploy-skill.sh'. 

Once you have done that, the skill will be deployed inside of your account (which you are logged into through the terminal using 'cortex configure')

Create the agent, and select the skill. Now you must import the names.csv file into the Agent Composer. On the right hand side, select the plus under 'Dataset References'.

Select 'Specify new dataset' -> 'Managed Content' -> 'Import File' -> Select the names.csv file from your directory -> Import -> Add Dataset -> Specify New Dataset -> 'Dataset Name' : 'names' -> 'Dataset Title': Names -> Parameters: Field Name: 'text', Type: 'string', required: no -> Add Dataset


# Class 151
CS Method Presentation

# Class 201
Is the Calculated Result Prime?

Instructions:
Start by running the simple_calculator.ipynb notebook, making sure to replace '<your_initials>' where necessary. 

Afterwards, do the same for the is_prime.ipynb notebook. 

Then open up the agent composer. Select the two skills and add them to the canvas, Simple Calculator and Is Prime?

Create the Input and Output services, making sure to match the input parameters with those of Simple Calculator, and the output parameters with the output of Is Prime? 

Once created, wire up the skills. Connect the input service to Simple Calculator. Then, wire up the input of Is Prime? to the Synapses board output of Simple Calculator. Finally connect Is Prime? to the output service.

# Class 202 
Invoke Agent

Instructions:
Open up the invoke_agent.ipynb notebook, and proceed through the cells. 

Make sure to replace "default/echo" with the namespace and name of an agent you have created. 

The easiest example is the agent created from the hello_world.ipynb. 

The 'agent.invoke_service("input"...)' will most likely need to be adjusted also. Change the "input" to the name of the input service you created in your agent.

# Class 204
Intro to CLI

Instructions:
Read through CLI-tools.sh to see some examples of CLI commands that can be used. These can be run right in the Skill Lab terminal.

# Class 221,222,223
Feedback, Profile, and Insights

Instructions:
This notebook is used as an example of showing how Profile, Feedback, and Insights work. It is not meant to be deployed or used by students.

# Class 271
Intro to ETL (Extract, Transform, Load) in Cortex

Instructions:
Open up the ETL.ipynb notebook. Run through the cells, noting how the dataset is extracted, loaded, and transformed through Cortex.

# Class 272
Data Handling in Cortex

Instructions:
Open up the Data-Handling.ipynb notebook, and run through the cells. You will see ETL coupled with pipelines.

# Class 312
Invoking a skill from inside of another - Sum to Multiplier

Instructions:
Open up the sum_to_multiplier.ipynb notebook. Run through the cells, making sure to replace '<your_initials>' where necessary. You will notice two functions being deployed. 

The first 'multiplier' is deployed, and once it is the second 'sum_to_multiplier' calls upon it inside of it's code. 

# Class 351
Introduction to ML in Cortex - AMES Housing Market Example

Instructions:
Run through the notebooks in this order:
ames_analysis -> ames_clean -> ames_features -> ames_modeling -> ames_deploy.

The ames_analysis notebook will visualize and analyze the data

The ames_clean notebook will attempt to clean the data by removing the NULL values, so it will be more accurate for the next steps

The ames_feature notebook does Feature Prep, to make sure the features are ready for modeling

The ames_modeling notebook demonstrates how to use the previous work (cleaning, feature prep) to quickly build up the engineered features we need to train our ML model.

The ames_deploy notebook demonstrates how to user our Experiment and Pipelines from the previous steps to easly deploy our model as a Cortex Action. Make sure to replace 'run=exp.get_run(<your_experiment_id>)' With the proper experiment id you received  

# Class 352
Wrapping an External API Call Into A Skill - Algorithmia Car Classifier

Instructions:
Make sure to get an API Key from Algorithmia. One can register for free at https://algorithmia.com

Run through the notebook steps, making sure to replace '<your_api_key>' with the API Key you received when necessary.

# Class 353
Invoking an agent from within a skill - Calculate the Sum Agent Invoked from a Skill

Instructions:
Start off with the sum_calculator.ipynb. Run through each cell, making sure to replace '<your_initials>' where necessary. 

Then open up the invoke_agent.ipynb, run through each cell making sure to replace '<your_initials>' where necessary. 

You will notice that the function deployed in this notebook invokes the function deployed in sum_calculator.ipynb. 

At the end is another function (not deployed) which demonstrates this capability in the SDK.
