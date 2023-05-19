from sqlalchemy import create_engine
import psycopg2
import pandas as pd

engine=create_engine("postgresql+psycopg2://postgres:pw1234@db_olist:5432/olist")

def insert_data(file, table):

    df = pd.read_csv(file)

    try:
        df.to_sql(table, engine, if_exists='replace', index=False)
    # except:
    #     print('Some error has occurred.')
    finally:
        engine.dispose()

if __name__ == '__main__':

    ### Customers
    file = 'data/raw/olist_customers_dataset.csv'
    table = 'customers'
    insert_data(file, table)

    ### Geolocation
    file = 'data/raw/olist_geolocation_dataset.csv'
    table = 'geolocation'
    insert_data(file, table)

    ### Order Items
    file = 'data/raw/olist_order_items_dataset.csv'
    table = 'order_items'
    insert_data(file, table)

    ### Order Payments
    file = 'data/raw/olist_order_payments_dataset.csv'
    table = 'order_payments'
    insert_data(file, table)

    ### Order Reviews
    file = 'data/raw/olist_order_reviews_dataset.csv'
    table = 'order_reviews'
    insert_data(file, table)

    ### Orders
    file = 'data/raw/olist_orders_dataset.csv'
    table = 'orders'
    insert_data(file, table)

    ### Products
    file = 'data/raw/olist_products_dataset.csv'
    table = 'products'
    insert_data(file, table)

    ### Sellers
    file = 'data/raw/olist_sellers_dataset.csv'
    table = 'sellers'
    insert_data(file, table)

    ### Product Category
    file = 'data/raw/product_category_name_translation.csv'
    table = 'product_category'
    insert_data(file, table)