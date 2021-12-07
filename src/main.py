import pandas as pd
import redis

df_og = pd.read_csv("../data/Promoteur_imo.csv", sep = ";")
df = df_og.copy()

r = redis.Redis(password="tutu", charset="utf-8", decode_responses=True)

data = {}
df.drop(columns="Id", inplace = True)
columns = df.columns

for id in df.index:
    for column in df.columns:
        data.update({":".join([str(id), column]): df[column][id]})

for key in data:
    r.set(key, str(data[key]))

r.save()
