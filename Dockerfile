FROM python:3.7
EXPOSE 8080
WORKDIR /app
COPY requirements.txt ./requirements.txt

# Install dependencies
RUN pip install -r requirements.txt

COPY . .

# Run the application:
CMD streamlit run webapi.py