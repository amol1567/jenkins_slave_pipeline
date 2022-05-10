FROM centos:latest
WORKDIR /home
COPY ./hello.py .
RUN yum install python3 -y
ENTRYPOINT ["python3", "hello.py"]