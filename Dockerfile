FROM python:2.7-alpine

RUN apk update && apk add zip && \
    pip install BeautifulSoup && \
    wget https://github.com/m4ll0k/WAScan/archive/master.zip && \
    unzip master.zip

WORKDIR WAScan-master

ENTRYPOINT ["python", "wascan.py"]

CMD ["-h"]