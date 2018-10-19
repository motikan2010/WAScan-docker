FROM python:2.7

RUN apt-get update -y && apt-get -y install zip && \
    pip install BeautifulSoup && \
    wget https://github.com/m4ll0k/WAScan/archive/master.zip && \
    unzip master.zip

ENTRYPOINT ["python", "WAScan-master/wascan.py"]

CMD ["-h"]