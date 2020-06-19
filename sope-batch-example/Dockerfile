FROM apache/zeppelin:0.9.0
USER root

RUN mkdir /data
ENV STACKOVERFLOW_SURVEY_2019_DATA_URL https://drive.google.com/uc?export=download&id=1QOmVDpd8hcVYqqUXDXf68UMDWQZP0wQV
RUN set -x \
    && curl -fSL "$STACKOVERFLOW_SURVEY_2019_DATA_URL" -o /tmp/so-survey-2019.zip \
    && unzip /tmp/so-survey-2019.zip -d "/data/so-survey" \
    && rm /tmp/so-survey-2019.zip*

COPY interpreter.json /zeppelin/conf/interpreter.json
ADD run.sh /run.sh
RUN chmod a+x /run.sh
CMD ["/run.sh"]