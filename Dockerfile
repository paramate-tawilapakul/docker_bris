FROM node:16

WORKDIR /app

COPY package*.json ./

RUN npm install
RUN mkdir /apps
RUN mkdir /apps/config
RUN mkdir /apps/config/unireport
RUN mkdir /apps/config/unireport/images

RUN mkdir /apps/message
RUN mkdir /apps/message/RESULT_UNOFFICIAL
RUN mkdir /apps/message/email
RUN mkdir /apps/message/EXECUTE
RUN mkdir /apps/message/ITEM_STATUS
RUN mkdir /apps/message/ORM
RUN mkdir /apps/message/PREFETCH
RUN mkdir /apps/message/RESULT
RUN mkdir /apps/message/SMS

RUN mkdir /apps/ris_official
RUN mkdir /apps/ris_official/pdf

RUN mkdir /apps/ris
RUN mkdir /apps/ris/logs
RUN mkdir /apps/ris/pdf_backup
RUN mkdir /apps/ris/pdf

COPY . .

EXPOSE 6001

CMD [ "npm", "start" ]