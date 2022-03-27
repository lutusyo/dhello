# Pull base image
FROM python:3.8


# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


# Set work directory
WORKDIR /kapu



# Install dependencies
COPY Pipfile Pipfile.lock /kapu/
RUN pip install pipenv && pipenv install --system


# Copy project
COPY . /kapu/
