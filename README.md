
# AaaS
Analytics as a service - query databases using natural language



## SETUP GUIDE

1. Clone the repository

2. ideally create a fresh virtual environment

3. install the requirements using `pip install -r requirements.txt`

4. create an openai.yaml file in the required_files folder and add your openai api key to it
  
5.   follow the strucutre shown in **example_openai.yaml** and add your DB/schema/tables to this .yaml file too (dont ask why they are currently in the same .yaml file...)

7. run Back_end\code\generate_hierarchy.py

you now the bare minimum to start using the bot, depending on the number of tables, complexity of tables, or naming conventions you may need to be quite specific with your prompts, but the bot should be able to handle most cases.

**(optional setup - very early development stage, may not work as expected)**

6. if you have any relevent SQL code that makes use of any relevent tables, throw them into this folder: Back_end\vector_data\sql_snippets. you can then run the dynamic_info_create.py file to create extract relevent information from the sql code.

7. Then, you can use he create_improved_hierarchy.py file to udate the hierarchy file. This will make the bot more accurate, and will also allow it to handle more complex queries.
Alternitavly, you can add details to the hierarchy file manually, if you have sufficent background knowledge of the specific of the tables this can be helpful.


## USAGE GUIDE

1. start the streamlit app by running  **run_app.py**

2. type things in the text box
