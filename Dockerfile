FROM python:3-onbuild
VOLUME ["/tmp"]
ENV PYTHONPATH $PYTHONPATH:/usr/src/app
WORKDIR /usr/src/app
CMD gunicorn -c wsgi_config.py application:app

