FROM python:3.6.8

ENV PYTHONBUFFERED 1
RUN mkdir /auto_deployment
WORKDIR /auto_deployment
ADD . /auto_deployment

RUN chmod 777 ./run.sh
RUN pip install -r requirements.txt

ENV env $env

CMD ["./run.sh"]


EXPOSE 8000