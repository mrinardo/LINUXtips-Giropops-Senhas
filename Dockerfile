FROM python:3

ENV REDIS_HOST=localhost

WORKDIR /app

COPY . ./

RUN pip install -r ./requirements.txt

ENTRYPOINT ["flask"]
CMD ["run", "--host=0.0.0.0"]






