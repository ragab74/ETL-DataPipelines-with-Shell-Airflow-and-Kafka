#! /bin/bash

# Unzip the data
echo "Unzipping the downloaded data"
tar -xvf tolldata.tgz

# Extracting data from .csv file
echo "Manipulation on CSV.."
cut -d"," -f1-4 /home/project/airflow/dags/vehicle-data.csv > /home/project/airflow/dags/csv_data.csv

# Extracting data from .tsv file
echo "Manipulation on TSV file.."
cut -f5-7 | sed 's/\t/,/g' /home/project/airflow/dags/tollplaza-data.tsv > /home/project/airflow/dags/tsv_data.csv

# Extracting data from .txt file
echo "Manipulation on TXT file.."
cut -c 86-89,93-99 /home/project/airflow/dags/payment-data.txt | sed 's/  */,/g' > /home/project/airflow/dags/fixed_width_data.csv

echo "Combining the extracted CSVs.."
paste -d"," csv_data.csv tsv_data.csv fixed_width_data.csv > extracted_data.csv

# Transforming data
echo "Capitalizing vehicle_type.."
tr '[a-z]' '[A-Z]' < /home/project/airflow/dags/extracted_data.csv | awk -F, 'BEGIN{OFS=","}{$4=$4; print}' > /home/project/airflow/dags/finalassignment/staging/transformed_data.csv