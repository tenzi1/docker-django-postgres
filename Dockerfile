#Pull base image
FROM python:3.10.7-slim-bullseye

#set ENVIRONMENT VARIABLES
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#set working directory
WORKDIR /test

#install dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt


#Copy project
COPY . .

