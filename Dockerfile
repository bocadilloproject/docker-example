FROM python:3.7

ENV PYTHONUNBUFFERED=1
ENV ROOT=/usr/src/app

WORKDIR ${ROOT}

# Add requirements now (allows caching of pip dependencies for faster builds)
ADD requirements.txt ${ROOT}/requirements.txt

# Install requirements
RUN pip install -r requirements.txt

# We're going to run with gunicorn, so we need to install it.
# Alternatively, gunicorn could have been specified in `requirements.txt`.
RUN pip install gunicorn

# Add everything else the app may need (including templates)
# into the container.
ADD . ${ROOT}

CMD ["gunicorn", "-k", "uvicorn.workers.UvicornWorker", "-b", "0.0.0.0:8000", "api:api"]
# Note: you could also have set the `PORT` environment variable and run:
# CMD ["python", "api.py"]
