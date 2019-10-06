# Use an official Python runtime as a parent image
FROM ubuntu:18.04

# -- Configuration variables
# Web server listening port
ENV PORT="8080"

# install pip
RUN apt-get update && apt-get install -y python3-pip python3-dev && apt-get clean 

# -- Install Application into container (including pipfiles):
RUN mkdir /app
WORKDIR /app
COPY . /app

# -- Install dependencies:
RUN pip3 install --trusted-host pypi.python.org -r requirements.txt

# -- expose the server port
EXPOSE $PORT

# -- Launches the server
ENTRYPOINT ["python3","server.py"]
