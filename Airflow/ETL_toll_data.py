import airflow
from airflow import DAG
from airflow.utils.dates import days_ago
from airflow.operators.bash_operator import BashOperator
from datetime import timedelta

# DAG arguements
default_args = {
    'owner': 'Mahmoud Ragab',
    'start_date': days_ago(0),
    'email': 'mahmoudragab@dummy.com',
    'email_on_failure': True,
    'email_on_retry': True,
    'retires': 1,
    'retry_delay': timedelta(minutes=5)
}

# difine the dag
dag = DAG(
    dag_id = 'ETL_Toll_data',
    description = 'Apache Airflow Final Assignment',
    default_args = default_args,
    schedule_interval = timedelta(days=1)
)

extract_transform_load = BashOperator(
    task_id = "ETL",
    bash_command = "/home/project/airflow/dags/Extract_Transform_data.sh",
    dag = dag
)

extract_transform_load

