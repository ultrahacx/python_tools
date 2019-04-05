# importing BeautifulSoup form 
# bs4 module 
from bs4 import BeautifulSoup 
import requests 
request = requests.get("http://www.google.com") 
data = request.text 
soup = BeautifulSoup(data) 
for link in soup.find_all('a'): 
    print(link.get('href')) 
