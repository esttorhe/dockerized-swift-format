FROM swift
LABEL maintainer="Esteban Torres <me@estebantorr.es>"
LABEL Description="Docker Container for the Apple's Swift programming language with swiftformat support; based on Romain Pouclet's article https://romain-pouclet.com/2018/08/23/swift-format-docker/"

VOLUME /source

COPY format-all.sh /
RUN chmod +x /format-all.sh
ENTRYPOINT [ "/format-all.sh" ]
