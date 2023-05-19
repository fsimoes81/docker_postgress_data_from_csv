FROM python:3.9.9
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt

COPY populate_db.py /code/

RUN mkdir /code/data
RUN mkdir /code/data/raw
COPY ./data/raw /code/data/raw/