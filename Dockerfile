FROM python:3-onbuild
ENV PYTHONPATH $PYTHONPATH:/usr/src/app
WORKDIR /usr/src/app
CMD gunicorn -c wsgi_config.py application:app
VOLUME ["/tmp"]
