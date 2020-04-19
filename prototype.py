from selenium import webdriver
from selenium.webdriver.chrome.options import Options
import time
# import re

# import numpy as np
# import pandas as pd

def get_site(url):
    import random
    import string

    rando_string = ''.join([random.choice(string.ascii_letters + string.digits) for n in range(32)])

    driver.get(url)
    time.sleep(1)
    file_out = './html/' + rando_string + '.html'
    print("Saving source for site: " + url)
    print(file_out)
    with open(file_out, 'w') as f:
        f.write(driver.page_source)

# Instantiating the webdriver object
chrome_options = Options()
chrome_options.add_argument("--headless")
chrome_options.add_argument("--no-sandbox")
chrome_options.add_argument("--disable-dev-shm-usage")
driver = webdriver.Chrome('/usr/bin/chromedriver', options=chrome_options)

url_list = [("http://quotes.toscrape.com/page/" + str(i)) for i in list(range(1,6))]

for i in url_list:
    time.sleep(1)
    get_site(i)
