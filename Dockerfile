FROM debian:9.4-slim

ENV NODE_ENV=development

COPY scripts /scripts
RUN chmod a+x /scripts/* && /scripts/build.sh && /scripts/cleanup.sh
COPY etc /etc

VOLUME [ "/app", "/server", "/var/lib/mongodb" ]
EXPOSE 3000

CMD ["/scripts/start.sh"]



