# TP-01 — Machine Learning in Production: Continuous Integration with GitHub and Docker

**Author:** Camille Bordes

**Email:** [camille.bordes@efrei.net](mailto:camille.bordes@efrei.net)

**Group:** DAI

## Requirements

Ensure that the following are installed on your system:

* [Python 3.11+](https://www.python.org/downloads/)
* [Docker](https://www.docker.com/get-started)

## Running the application locally

### 1. Install dependencies

```bash
pip install -r requirements.txt
```

### 2. Launch the Flask application

```bash
python app.py
```

The application will be accessible at:
[http://127.0.0.1:5000](http://127.0.0.1:5000)

### 3. Run unit tests

```bash
python -m unittest
```

## Running the application with Docker

### 1. Build the Docker image

```bash
docker build -t flask-app .
```

### 2. Run the container

```bash
docker run -d -p 5000:5000 flask-app
```

The application will be accessible at:
[http://localhost:5000](http://localhost:5000)
