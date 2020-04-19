FROM python:3-alpine

WORKDIR '/app'

RUN apk --no-cache --update add gcc gfortran python python-dev py-pip build-base wget freetype-dev libpng-dev openblas-dev

RUN apk add --no-cache --update chromium-chromedriver chromium

RUN pip install numpy pandas selenium

RUN mkdir html
# From https://github.com/Zenika/alpine-chrome/blob/master/Dockerfile
#RUN echo @edge http://nl.alpinelinux.org/alpine/edge/community > /etc/apk/repositories \
#    && echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories \
#    && apk add --no-cache \
#    libstdc++@edge \
#    chromium@edge \
#    harfbuzz@edge \
#    nss@edge \
#    freetype@edge \
#    ttf-freefont@edge \
#    && rm -rf /var/cache/* \
#    && mkdir /var/cache/apk
#
#    # Add Chrome as a user
#    RUN mkdir -p /usr/src/app \
#        && adduser -D chrome \
#        && chown -R chrome:chrome /usr/src/app
#    # Run Chrome as non-privileged
#    USER chrome
#    WORKDIR /usr/src/app
#
#    ENV CHROME_BIN=/usr/bin/chromium-browser \
#        CHROME_PATH=/usr/lib/chromium/

    # Autorun chrome headless with no GPU
    #ENTRYPOINT ["chromium-browser", "--headless", "--disable-gpu", "--disable-software-rasterizer", "--disable-dev-shm-usage"]

COPY . .

CMD python prototype.py
