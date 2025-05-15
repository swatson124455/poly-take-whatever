FROM python:3.11-slim

WORKDIR /app

# Copy requirements and install
COPY backend/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY backend/app ./app
COPY frontend/build ./app/frontend_build

# Copy entrypoint and env example
COPY entrypoint.sh .
COPY .env.example .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
