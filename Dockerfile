FROM python:3
RUN pip3 install django
RUN pip3 install mysqlclient
WORKDIR /web
COPY . .
WORKDIR ./django
CMD ["python3", "manage.py", "runserver", "0:8000"]
EXPOSE 8000
