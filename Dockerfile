FROM python:3.11-slim

WORKDIR /app

# 安裝 requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 複製程式碼
COPY . .

# Cloud Run 預設提供 PORT
ENV PORT=8080
EXPOSE 8080

# 直接用 python 啟動 main.py
CMD ["python", "main.py"]