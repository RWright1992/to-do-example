FROM python:3.6
WORKDIR /app
COPY . .
RUN pip3 install -r requirements.txt
ENV DATABASE_URI mysql+pymysql://root:root@mysql/flask-db
#RUN python3 create.py
EXPOSE 5000
ENTRYPOINT ["/usr/local/bin/python3", "app.py"]