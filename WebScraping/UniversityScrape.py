from bs4 import BeautifulSoup
import requests

html_text = requests.get('https://university.graduateshotline.com/ubystate.html').text
soup = BeautifulSoup(html_text, 'lxml')


print(html_text)