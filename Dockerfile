# Use an official Python runtime as a parent image
FROM python:3.7-alpine3.9
WORKDIR /app

# Install any needed packages specified in requirements.txt
RUN apk add git g++ gcc libxml2 libxslt libxslt-dev libxml2-dev yaml yaml-dev

COPY buildout.cfg /app
COPY setup.py /app

ENV PATH $PATH:/app/bin

# Run install of dev dependencies
RUN pip install --trusted-host pypi.python.org .
# Run scripts install
RUN buildout
