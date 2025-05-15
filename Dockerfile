FROM python:3.11-slim

WORKDIR /app

COPY backend/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY backend/app ./app
COPY frontend/build ./app/frontend_build

COPY entrypoint.sh ./
RUN chmod +x entrypoint.sh

# Expose port and set entrypoint
EXPOSE 8000
ENTRYPOINT ["./entrypoint.sh"]
