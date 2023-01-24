FROM python:3.7.3-stretch

# Working directory 
WORKDIR /app

# Copy source code to working directory 
COPY . app.py /app/

# Install packages from requirements.txt
# hadolint ignore-DL3013
RUN pip install --upgrade pip
RUN pip install -r requirements.txt 