FROM python:3.10
WORKDIR /app
COPY app/requirements.txt requirements.txt
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt
COPY app/main.py main.py
COPY app/test_main.py test_main.py
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
