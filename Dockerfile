FROM python:3.6-alpine

# Correct directories
RUN mkdir /app /venv

# Install dependencies
RUN python3 -m venv /venv
COPY requirements.txt /app
RUN /venv/bin/pip install -r /app/requirements.txt

# Copy across the app code
COPY . /app

# Tell docker we want to use port 5000
EXPOSE 5000

# This is the command we want to run by default when a container is created
CMD /venv/bin/python /app/app.py