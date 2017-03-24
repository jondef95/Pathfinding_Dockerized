FROM ubuntu:latest

ARG CACHE_DATE=not_a_date
RUN apt-get update
RUN apt-get install -y python3-dev python3-pip git nano
RUN git clone https://github.com/bowei437/Round3_Team2.git
WORKDIR Round3_Team2/server-after-versioning
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN pip3 install Flask-API
RUN ./replaceIP.sh
ENTRYPOINT ["python3"]
CMD ["-m", "swagger_server"]
