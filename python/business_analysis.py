import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv('../data/sales_transactions.csv', parse_dates=['Order_Date'])
print('Shape:', df.shape)
print('\nMissing values:\n', df.isna().sum())
valid = df[df['Order_Status'] != 'Cancelled'].copy()
kpis = {'Revenue': valid['Revenue'].sum(), 'Profit': valid['Profit'].sum(), 'Profit Margin': valid['Profit'].sum()/valid['Revenue'].sum(), 'Orders': valid['Order_ID'].nunique(), 'Customers': valid['Customer_ID'].nunique(), 'AOV': valid['Revenue'].sum()/valid['Order_ID'].nunique()}
print('\nExecutive KPIs:\n', kpis)
monthly = valid.groupby(valid['Order_Date'].dt.to_period('M')).agg(Revenue=('Revenue','sum'), Profit=('Profit','sum'), Orders=('Order_ID','nunique')).reset_index(); monthly['Profit_Margin']=monthly['Profit']/monthly['Revenue']
segment = valid.groupby('Customer_Segment').agg(Customers=('Customer_ID','nunique'), Revenue=('Revenue','sum'), Profit=('Profit','sum')).reset_index(); segment['Revenue_per_Customer']=segment['Revenue']/segment['Customers']
region = valid.groupby('Region').agg(Revenue=('Revenue','sum'), Profit=('Profit','sum'), Orders=('Order_ID','nunique')).reset_index(); region['Margin']=region['Profit']/region['Revenue']
category = valid.groupby('Category').agg(Revenue=('Revenue','sum'), Profit=('Profit','sum'), Orders=('Order_ID','nunique')).reset_index(); category['Margin']=category['Profit']/category['Revenue']
print('\nCategory performance:\n', category.sort_values('Revenue',ascending=False)); print('\nRegional performance:\n', region.sort_values('Revenue',ascending=False))
