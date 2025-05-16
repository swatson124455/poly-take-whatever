FROM python:3.11-slim
WORKDIR /app
COPY backend/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY entrypoint.sh .
COPY backend/app ./app
COPY frontend/build ./app/frontend_build
RUN chmod +x entrypoint.sh
CMD ["./entrypoint.sh"]
