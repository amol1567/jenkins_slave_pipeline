FROM centos:latest
WORKDIR /home
COPY ./hello.py .
ENTRYPOINT ["python3", "hello.py"]