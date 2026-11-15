FROM quay.io/drsylent/cubix/block2/homework-base:java25

LABEL cubix.homework.owner="Soltész Ákos"

RUN mkdir /opt/app && chown 1001 -R /opt/app
USER 1001

ENV CUBIX_HOMEWORK="Soltész Ákos"
ENV APP_DEFAULT_MESSAGE=""

WORKDIR /opt/app
COPY --chown=1001 target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]
