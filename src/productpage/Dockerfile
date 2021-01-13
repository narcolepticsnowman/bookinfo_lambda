FROM python:3.7.7-slim
WORKDIR /opt/productpage
COPY requirements.txt /opt/productpage/
RUN pip install -r requirements.txt

COPY test-requirements.txt /opt/productpage/
RUN pip install -r test-requirements.txt

COPY productpage.py tests/unit/* templates static /opt/productpage/

RUN python -m unittest discover

RUN pip install -r requirements.txt --target ./package
RUN pip cache purge
RUN apt-get update && apt-get install -y zip

WORKDIR /opt/productpage/package
RUN apt-get install -y curl &&\
    rm -f flask_lambda.py &&\
    curl https://raw.githubusercontent.com/narcolepticsnowman/flask-lambda/master/flask_lambda.py -O &&\
    zip -r ../productpage.zip ./
WORKDIR /opt/productpage
RUN rm -rf ./package && \
    zip -r productpage.zip ./ && \
    unzip -l productpage.zip | grep -v package/
