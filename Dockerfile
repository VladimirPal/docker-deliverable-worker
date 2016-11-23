FROM python:3-onbuild
CMD [ "gunicorn -c wsgi_config.py application:app" ]
