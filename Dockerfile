FROM swift
LABEL maintainer="Esteban Torres <me@estebantorr.es>"
LABEL Description="Docker Container for the Apple's Swift programming language with swiftformat support"

VOLUME /source

COPY format-all.sh /
RUN chmod +x /format-all.sh
ENTRYPOINT [ "/format-all.sh" ]
