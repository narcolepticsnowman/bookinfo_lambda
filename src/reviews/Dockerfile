FROM gradle:6.8.0-jdk11

COPY build.gradle settings.gradle /opt/reviews/
WORKDIR /opt/reviews
COPY src /opt/reviews/src
RUN gradle buildZip && find . && cp ./build/distributions/reviews.zip ./ && unzip -l reviews.zip
