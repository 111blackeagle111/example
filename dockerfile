FROM  debian:bookworm
LABEL mainteiner="cazzari@gmail.com"
RUN apt update && apt install nginx -y
WORKDIR /apps
COPY ./index.html .
CMD ["service","nginx","start"]
