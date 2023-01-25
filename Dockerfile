FROM ubuntu:22.04.1

FROM python:3.10.6

COPY . .

RUN chmod +x script1.sh

ENTRYPOINT [ "bash", "script1.sh" ]