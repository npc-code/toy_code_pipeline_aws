FROM python:3.8
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
WORKDIR /myapp

COPY requirements.txt /myapp
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY . /myapp

EXPOSE 5000

CMD ["flask", "run"]