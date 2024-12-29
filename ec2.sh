chmod 400 "ec2-meta-keypair.pem"
ssh -i "ec2-meta-keypair.pem" ec2-user@52.12.9.223

sudo yum update -y
sudo yum install python3 -y
sudo yum install python3-pip -y
python3 --version
pip3 --version

# Airflow
python3 -m venv airflow_env
source airflow_env/bin/activate
pip install apache-airflow
export AIRFLOW_HOME=~/airflow
airflow db init
airflow users create \
    --username admin \
    --firstname Admin \
    --lastname User \
    --role Admin \
    --email admin@example.com
airflow webserver --port 8080

# DBT
pip install dbt-core
pip install dbt-snowflake
dbt --version

