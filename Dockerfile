FROM python:3.13

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
COPY etc/cmdb-docker.conf etc/cmdb.conf

CMD ["python3", "-m", "cmdb", "-s"]
