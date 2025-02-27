FROM python:3-slim

RUN mkdir /app
WORKDIR /app

COPY streamlit_app.py /app
COPY requirements.txt /app
RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["streamlit", "run", "streamlit_app.py", "--server.port", "8080", "--theme.base" , "light", "--client.toolbarMode", "minimal"]
