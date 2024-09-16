## Financial Services Chat Bot
This is an example chatbot demonstrating how to build AI assistants for financial services and banking. It includes pre-built intents, actions, and stories for handling conversation flows like checking spending history and transferring money to another account, asking for services ect..


### Install dependencies
Run:
pip install -r requirements.txt

Run the bot
Use rasa train to train a model.

Then, to run, first set up your action server in one terminal window, listening on port 5056:

rasa run actions --port 5056

Note that port 5056 is used for the action server, to avoid a conflict when you also run the helpdesk bot as described below in the handoff section.

In another window, run the duckling server (for entity extraction):

docker run -p 8000:8000 rasa/duckling

Then to talk to the bot, run:

rasa shell --debug

Note that --debug mode will produce a lot of output meant to help you understand how the bot is working under the hood. To simply talk to the bot, you can remove this flag.

You can also try out your bot locally using Rasa X by running

rasa x
Refer to our guided workflow in the Wiki page for how to get started with Rasa X in local mode (server).

### Overview of the files
data/nlu/nlu.yml - contains NLU training data

data/nlu/rules.yml - contains rules training data

data/stories/stories*.yml - contains stories training data

actions.py - contains custom action/api code

domain.yml - the domain file, including bot response templates

config.yml - training configurations for the NLU pipeline and policy ensemble

tests/ - end-to-end tests

Things you can ask the bot

The bot currently has some skills. You can ask it to:

1.Transfer money to another person

2. Check your earning or spending history
 
3. Answer a question about transfer charges
 
4. Asking for credit card
 
5. Tell you your account balance
   
6. Other services..
