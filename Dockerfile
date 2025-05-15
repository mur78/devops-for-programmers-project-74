FROM node:20.12.2

WORKDIR /app

COPY app/package.json package.json
COPY app/package-lock.json package-lock.json


RUN npm install


COPY . .


ENV PATH /app/node_modules/.bin:$PATH

CMD ["make", "test"]
