Installation requirements:
 Python 2.7 or above
 Django 3.0 or above (py -m pip install Django)
 Django Axes (pip install django-axes)
 Pillow (pip install Pillow)
 Postgresql 12 or above


Setting up pre exisiting database for testing:
 During configuration after installing Postgresql,set up
  host=localhost(127.0.0.1)
  port=5555
  username=postgres
  password=1234
 
 -add 'C:/Program Files/PostgreSQL/13/bin' to enviornment variables in your system
 -Open CMD
 -run 'createdb pooling'
 -Switch your working directory to root folder of project where you see manage.py, pooling etc. files
 -run 'psql pooling < db-dump.sql'

Running server on localhost:
 -open CMD
 -Switch your working directory to root folder of project where you see manage.py, pooling etc. files
 -execute 'py manage.py runserver'
 -Browse the URL this command gives on execution

pre existing accounts for testing(Email/password):
 sharmaaman041@gmail.com/1234
 sharmaamanji1@gmail.com/2345


