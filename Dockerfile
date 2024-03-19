FROM dunkle/pandora-rebuild:1.0

VOLUME /data

WORKDIR /opt/app

ADD . .

RUN pip --no-cache-dir install .[api,cloud]

ENTRYPOINT ["bin/startup.sh"]
