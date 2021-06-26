from bs4 import BeautifulSoup
import requests

html_text = requests.get('https://university.graduateshotline.com/ubystate.html').text
soup = BeautifulSoup(html_text, 'lxml')
numofstates = soup.find_all('b')
universities = soup.find_all('a')
ols = soup.find_all('ol')


allstates = []
alluniversities = []

for state in numofstates:
    allstates.append(state.text)   

for ol in ols:
    lis = ol.find_all('li')
    alllis = []
    for li in lis:
        alllis.append(li.text)
    alluniversities.append(alllis)
    
print(alluniversities)
        
    


