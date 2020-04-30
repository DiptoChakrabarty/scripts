scp  app.py   user@<ip-addr>:/app.py
scp  requirements.txt   user@<ip-addr>:/requirements.txt
scp  Dockerfile   user@<ip-addr>:/Dockerfile

ssh user@<ip-addr>  'docker build -t sample .'
