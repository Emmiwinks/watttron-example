import bs4
import random
import requests


def get_comic():
    rand_int = random.randint(1, 2581)
    url = "http://xkcd.com/" + str(rand_int)

    req = requests.get(url)

    soup = bs4.BeautifulSoup(req.text, 'html.parser')
    output = soup.find_all('img')[2].get("src")

    return output


get_comic()
