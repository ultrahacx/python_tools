import os
import urllib2
import json

while True:
    ip = raw_input("Enter the IP Address: ")
    url = "http://ip-api.com/json/"
    response = urllib2.urlopen(url+api)
    data = response.read()
    values = json.loads(data)
    print("IP: " + values['query'])
    print("City: " + values['query'])
    print("ISP: " + values['query'])
    print("Country: " + values['query'])
    print("Region: " + values['query'])
    print("Time Zone: " + values['query'])
    break
