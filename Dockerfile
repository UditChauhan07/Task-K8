FROM ubuntu:20.04

WORKDIR /app

COPY requirements.txt requirements.txt
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip install flask==2.1.*
COPY . .
ENV FLASK_APP=app
EXPOSE 9090
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0 --port 9090"]
