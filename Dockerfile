FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3-dev python3-pip git nano
RUN git clone -b swarm https://github.com/bowei437/Round3_Team2.git
WORKDIR Round3_Team2/python-flask-server
RUN pip3 install --upgrade pip
RUN ls -lsa
RUN pip3 install -r requirements.txt
RUN pip3 install Flask-API
RUN pip3 install utm
ENTRYPOINT ["python3"]
CMD ["-m", "swagger_server"]
