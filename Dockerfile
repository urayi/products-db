FROM mongo:3.6.8

ENV MONGO_INITDB_ROOT_USERNAME productListUser
ENV MONGO_INITDB_ROOT_PASSWORD productListPassword
ENV MONGO_INITDB_DATABASE admin

WORKDIR /data
VOLUME . data/database

EXPOSE 27017:27017
COPY . .
CMD "import.sh localhost"