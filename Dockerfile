FROM python:3-onbuild
CMD [ "gunicorn", "application:app --bind unix:/tmp/gunicorn.sock --worker-class aiohttp.worker.GunicornWebWorker" ]
