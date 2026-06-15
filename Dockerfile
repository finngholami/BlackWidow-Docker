FROM python:3.8-slim

RUN apt-get update && apt-get install -y \
    chromium \
    chromium-driver \
    && rm -rf /var/lib/apt/lists/*

RUN pip install \
    selenium==3.141.0 \
    urllib3==1.26.15 \
    tldextract \
    webdriver-manager

WORKDIR /app
COPY . .
ENTRYPOINT ["python", "crawl.py"]
CMD ["--url", "https://example.com"]
