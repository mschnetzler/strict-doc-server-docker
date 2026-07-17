FROM python:3.11-slim

ARG STRICTDOC_VERSION
RUN echo "Building version $STRICTDOC_VERSION"

RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    graphviz \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN mkdir /data

RUN pip install --no-cache-dir strictdoc~=$STRICTDOC_VERSION

EXPOSE 8080
CMD ["strictdoc", "server", "/data", "--port", "8080", "--host", "0.0.0.0"]