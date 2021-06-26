from bs4 import BeautifulSoup
import requests

html_text = requests.get('https://university.graduateshotline.com/ubystate.html').text
soup = BeautifulSoup(html_text, 'lxml')
numofstates = soup.find_all('b')
universities = soup.find_all('a')

for state in range(1,len(numofstates)):
    print(numofstates[state].text)
    


