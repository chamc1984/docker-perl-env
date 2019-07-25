FROM amazonlinux:2

ENV TZ='Asia/Tokyo'

RUN yum update -y; yum clean all
RUN yum install -y git; yum clean all

### make account, and make (app) home directory.
RUN useradd appuser
RUN mkdir -p /usr/local/app/appuser; chmod 775 /usr/local/app

### COPY from LOCAL(./) to CONTAINER, and change owner.
COPY . /usr/local/app/appuser/
RUN chown -R appuser:appuser /usr/local/app/appuser

### set home directory.
WORKDIR /usr/local/app/appuser

### exec /bin/bash.
CMD ["/bin/bash"]
