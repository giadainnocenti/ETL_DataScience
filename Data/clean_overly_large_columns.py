import pandas as pd

input_file = "glassdoor.csv"
output_file = "glassdoor_filtered.csv"

def clean_overly_large_columns(df):
    way_too_much_data = []
    prev_count = len(df.columns)
    for column in df.columns:
        if (df[column].dtype == object):
            try:
                max_string_length = float(max(df[column].str.split().str.len()))
                if (max_string_length > 1000):
                    way_too_much_data.append(column)
            except:
                print(f"\t{column} was not string")

    print(f"prev columns were {prev_count}, now they are {prev_count - len(way_too_much_data)}")
    return df.drop(way_too_much_data, axis=1)

print(f"reading the data from {input_file}")
# read the csv
glassdoor_df = pd.read_csv(input_file)

print("starting to clean")
# clean the csv
glassdoor_df = clean_overly_large_columns(glassdoor_df)

print(f"saving the clean data to {output_file}")
# save the csv
glassdoor_df.to_csv(output_file, index=False)

print("done!")