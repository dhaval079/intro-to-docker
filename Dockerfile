#remember each dockerfile syntax won't be same but, the base commands can be same like from 
#you will have to configure each dockerfile according to you purpose like web app,  android app , machine learning model2
#! LINE 8 and 9 : web application needs environment variables in order to configure the container
#! LINE 12 : run command is for the things you want inside your container
#! LINE 13 : start your application in container via this port , reme4

FROM python:3.8-alpine
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["flask", "run"]
