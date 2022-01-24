# alias tig="docker run --rm -v $(pwd):/wd -it tig $@"
# [Inspiration](https://github.com/ivoputzer/docker-tig)
# docker image build -t tig -f Dockerfile .

FROM alpine:3.15
RUN apk --no-cache --update add tig
WORKDIR /wd
VOLUME  /wd
ENTRYPOINT ["tig"]
