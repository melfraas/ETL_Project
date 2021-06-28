from bs4 import BeautifulSoup
import requests
import csv

html_text = requests.get('https://www.university-list.net/us/universities-1000.htm').text
soup = BeautifulSoup(html_text, 'lxml')
universitysite = []
university = []

for a in soup.find_all('a', href=True): 
    if a.text: 
        universitysite.append(a.href)

for a in soup.find_all('a', href=True): 
    if a.text: 
        university.append(a.text)

print(university)
    


