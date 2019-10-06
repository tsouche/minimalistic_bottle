# Use an official Python runtime as a parent image
FROM python:3

# -- Configuration variables

# Web server listening port
ENV PORT="8080"

# ENV LC_ALL="C.UTF-8"

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
