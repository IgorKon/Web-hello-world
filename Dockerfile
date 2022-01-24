FROM python:3.8

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/


RUN apt-get install -y python3-pip
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . /usr/src/app/

EXPOSE 8080

CMD ["python3", "app.py"]