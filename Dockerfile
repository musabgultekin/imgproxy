FROM nimmis/golang

# Vips Dependencies
RUN add-apt-repository ppa:dhor/myway && \
    apt-get update && \
    apt-get install -y libvips-dev

RUN go get -f -u github.com/DarthSim/imgproxy

CMD ["imgproxy"]

EXPOSE 8080