import os
import sys
sys.path.append(os.path.join(sys.path[0],'lib'))
import requests

def make_request(given_url):
    response = requests.get(given_url)
    return response

def handler(event, context):
    given_url = 'https://www.google.com'
    make_request(given_url)
    
