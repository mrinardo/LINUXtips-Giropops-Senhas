FROM python:3-alpine

ENV REDIS_HOST=localhost

EXPOSE 5000

WORKDIR /app

COPY . ./

RUN pip install --no-cache-dir -r ./requirements.txt

ENTRYPOINT ["flask"]
CMD ["run", "--host=0.0.0.0"]






