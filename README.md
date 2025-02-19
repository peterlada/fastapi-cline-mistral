# FastAPI Hello World Application

This is a simple FastAPI application with a single "hello world" endpoint. The application is built using Docker and can be deployed to DigitalOcean via a container registry.

## Prerequisites

- Docker
- Python 3.9
- `uv` package manager
- `pytest` for testing
- `ruff` for linting
- DigitalOcean account with a container registry and Kubernetes cluster

## Getting Started

1. Clone the repository:

```bash
git clone https://github.com/your-repo/fastapi-hello-world.git
cd fastapi-hello-world
```

2. Install dependencies using `uv`:

```bash
pip install uv
uv install
```

3. Run the application locally:

```bash
uvicorn app.main:app --reload
```

4. Access the "hello world" endpoint:

```bash
http://127.0.0.1:8000/hello
```

## Testing

Run the tests using `pytest`:

```bash
pytest
```

## Docker

Build the Docker image:

```bash
docker build -t fastapi-app .
```

Run the Docker container:

```bash
docker run -p 8000:8000 fastapi-app
```

## GitHub Actions

The project includes GitHub Actions workflows for building and linting with `ruff`. The workflows are defined in the `.github/workflows` directory.

## Deployment

To deploy the application to DigitalOcean, follow these steps:

1. Build and push the Docker image to the DigitalOcean Container Registry:

```bash
docker build -t registry.digitalocean.com/your-registry/fastapi-app:latest .
docker push registry.digitalocean.com/your-registry/fastapi-app:latest
```

Replace `your-registry` with your actual DigitalOcean Container Registry name.

2. Deploy the Docker image to a DigitalOcean Kubernetes (DOKS) cluster:

```bash
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```

Ensure you have the `kubectl` CLI configured to interact with your DOKS cluster.

## License

This project is licensed under the MIT License.
