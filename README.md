# Setup Olist Store Dataset on Postgres running on Docker 

## Dataset introduction
**[Olist Store](https://olist.com/pt-br/)** dataset is avaliable on [Kaggle](https://www.kaggle.com/). As described on Kaggle, it has information of 100k orders from 2016 to 2018.

Is a real commercial data, it has been anonymised, but has several informations, like: order status, price, payment and freight performance to customer location, product attributes and finally reviews written by customers. Extra informations can be found in this [link](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce).

## Dataset Schema

![Olist Dataset Schema](olist_db_schema.png)

### Instructions to join
The instructions to join the tables can be found [here](https://www.kaggle.com/code/andresionek/joining-marketing-funnel-with-brazilian-e-commerce/notebook).

## This Project
The main objective of this repository is provide a Docker containerization of this csv files in a *Postgres* database. Is perfectly possible use data from flat files, but can be useful having this data in a relational database system.

## How it works

The data in csv format is stored on *data/raw/*. The scripts to create the tables on Postgres are on *scripts/sql/*.

After cloning this repository and run **docker-composer up** it will create the tables on Postgres and fill it with data from csv.

After that you can connect to Postgres instance with any tool that you need.

### Parameters

You can change parameters in `docker-compose.yaml` file.

**POSTGRES_USER:**	The Postgres user to connect Postgres.

**POSTGRES_PASSWORD:**	The Postgres password to connect Postgres.

**POSTGRES_DB:**	The Postgres database name to connect Postgres.

**port:** The port mapped by Postgres is **5432** in your container. If you have other Postgres instances running, you have to change it.

### Run

Clone or download this repository, and run `$ docker-compose up`.