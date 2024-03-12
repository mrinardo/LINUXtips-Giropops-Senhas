FROM ubuntu

ENV REDIS_HOST=localhost

RUN apt update && apt install python3 pip redis -y

WORKDIR /app

COPY . ./

RUN pip install -r ./requirements.txt

ENTRYPOINT [ "/app/start.sh" ]




