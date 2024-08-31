# parent image is an official python runtime
FROM python:3.9-slim

# working directory in the container
WORKDIR /app

# copy current directory contents into /app container
COPY . /app

# install requirements 
RUN pip install --no-cache-dir -r requirements.txt

# make port 5000 available
EXPOSE 5001

# run app.py when the container launches
CMD ["python", "app.py"]

# build: docker build -t shortly .
# run: docker run -p 5001:5000 shortly
# access @: http://localhost:5001