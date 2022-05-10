FROM centos:latest
LABEL 'docker'
COPY ./hello.py .
ENTRYPOINT ["python3", "hello.py"]