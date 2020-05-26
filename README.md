# pipycrawler

Pipycrawler is a containerized environment to use with Selenium scrapers written in Python 3. 

It is based on the alpine linux with Python 3, numpy, pandas, and Selenium installed with the required dependencies. The Dockerfile will also build in a scraper called prototype.py, which just dumps entire HTML files for target webpages into a html directory upon deployment.


__**Installation notes**__  
Numpy and pandas take some time to build. 
