FROM mcr.microsoft.com/mssql/server:2019-latest
RUN wget https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -O /tmp/awscliv2.zip \
    && wget -O /tmp/unzip.deb http://ftp.us.debian.org/debian/pool/main/u/unzip/unzip_6.0-26_amd64.deb \
    && dpkg --fsys-tarfile /tmp/unzip.deb | tar xOf - ./usr/bin/unzip > /tmp/unzip && chmod +x /tmp/unzip \
    && /tmp/unzip /tmp/awscliv2.zip -d /tmp && /tmp/aws/install -i /tmp/awscli -b /tmp/awscli-bin
