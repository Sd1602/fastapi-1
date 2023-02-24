FROM python:3.9

RUN mkdir /src
 
WORKDIR /src


COPY requirements.txt ./

RUN apt-get update


RUN pip install --no-cache-dir -r requirements.txt


COPY . .


CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]