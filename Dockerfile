FROM python:3.10-alpine

ADD requirements.txt /srv/helloworld/
RUN pip install --no-cache-dir -r /srv/helloworld/requirements.txt

ADD . /srv/helloworld/

EXPOSE 8081
CMD python3 /srv/helloworld/hello_world.py