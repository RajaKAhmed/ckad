FROM golang:1.17 AS build

WORKDIR /go/src/app
COPY . .
RUN go build -o /out/example .
FROM scratch AS bin
COPY --from=build /out/example /

