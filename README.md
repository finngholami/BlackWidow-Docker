# BlackWidow-Docker

A Dockerized fork of [Black Widow](https://github.com/SecuringWeb/BlackWidow) — a blackbox data-driven web scanner. This version removes the need to install Chrome, ChromeDriver, or Python dependencies locally.

## Requirements

- [Docker](https://docs.docker.com/get-docker/)

## Usage

**1. Build the image**
```bash
docker build -t blackwidow .
```

**2. Run the scanner**
```bash
docker run --rm blackwidow --url https://example.com
```

## Differences from the original

- No need to install Python, Chrome, or ChromeDriver locally
- Runs headless Chrome inside the container
- Single command to scan after building the image

## Original project

[Black Widow](https://github.com/SecuringWeb/BlackWidow) by SecuringWeb
