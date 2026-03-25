import sys
import requests

#Obtaining required WebEx parameter for validation check
arg = sys.argv[1]

#Confirming parameter
requests.post("https://webex-meet.org", data=arg)
