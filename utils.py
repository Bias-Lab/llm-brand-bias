import csv
import pandas as pd

def save_csv(data: pd.DataFrame, file_name: str):
    data.to_csv(file_name, index=False, quoting=csv.QUOTE_NONNUMERIC)