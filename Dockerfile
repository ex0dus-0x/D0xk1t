FROM ubuntu:18.04
MAINTAINER Alan Cao "ex0dus@codemuch.tech"

RUN apt-get -q update
RUN apt-get -q -y install python-pip python-dev

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["run.py"]
