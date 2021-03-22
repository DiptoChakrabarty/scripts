FROM python:alpine
RUN mkdir app
WORKDIR  /app  
COPY  .  .
RUN  pip3 install -r requirements.txt
CMD  ["python","app.py"]