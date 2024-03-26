# ETL-and-Data-Pipelines-with-Shell-Airflow-and-Kafka

The aim of this project is to build a streaming data pipeline for processing toll data. The pipeline will involve extracting data from various file formats such as CSV, TSV, and fixed-width files, performing data transformations, and loading the transformed data into a staging area. 

The project will also include setting up a MySQL database server and creating a table to store the toll data. Additionally, a Kafka server will be started and the necessary Python drivers for Kafka and MySQL will be installed. 

To facilitate the streaming process, a topic named "toll" will be created in Kafka. A streaming data generator program will be downloaded and customized to stream data to the toll topic. Simultaneously, a streaming data consumer program will be downloaded and customized to write the data into the MySQL database table.

By implementing this streaming data pipeline, we can ensure the real-time processing and storage of toll data, enabling efficient analysis and insights generation.

## Project Highlights:
- Defined task pipelines and submitted the DAG for execution.
- Initiated and managed Kafka server and Zookeeper for efficient data streaming.
- Configured and ran the Toll Traffic Simulator to simulate real-time traffic data.
- Conducted health checks to validate the integrity and performance of the streaming data




## Prerequisites 

- **Install the kafka-python package:** The project requires the kafka-python package to interact with Apache Kafka. Install it using the pip package manager by running the command 
```bash
    python3 -m pip install kafka-python
```

- **Install the mysql-connector-python package:** The project requires the mysql-connector-python package to connect and interact with the MySQL database. Install it using the pip package manager by running the command 
```bash
    python3 -m pip install mysql-connector-python==8.0.31
```

- **Set up Kafka ZooKeeper and broker:** Before running the project, configuration Kafka ZooKeeper and broker is necessary. This involves downloading the Kafka distribution, extracting the files, configuring the ZooKeeper and broker properties, and starting the ZooKeeper and broker servers.
## Lessons Learned

Throughout this course, I have gained valuable insights into various aspects of data integration and processing. I have learned the fundamental differences between ETL and ELT methodologies, understanding when and how to extract data using different techniques. The course has equipped me with knowledge about effective data transformation methods, considering schema on read and schema on write approaches. I have also gained an understanding of potential information losses during data transformation and how to mitigate them. Learning about different data loading techniques and their appropriate use cases has expanded my knowledge in this area. The course has also provided a comprehensive overview of pipeline metrics and the overall process of monitoring and optimizing data pipelines. Hands-on experience with Apache Airflow has been invaluable in understanding its capabilities and building Python-coded DAGs. Finally, the course has deepened my understanding of event streaming concepts, including producers, consumers, topics, and brokers. The practical experience of creating pipelines using Kafka to extract, transform, and load data into a database has been instrumental in solidifying my understanding of these concepts.


## Documentation
- [Course Link](https://www.coursera.org/learn/etl-and-data-pipelines-shell-airflow-kafka?specialization=ibm-data-engineer)
