FROM python:3.11-slim
WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .
COPY clarity_le.pkl .
COPY color_le.pkl .
COPY cut_le.pkl .
COPY diamond_knn.pkl .
COPY diamond_scaling.pkl .

EXPOSE 8501

CMD ["streamlit","run","app.py","--server.address=0.0.0.0"]
