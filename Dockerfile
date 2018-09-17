FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /usr/share/nginx/html

RUN ng build --configuration=homolog
#RUN ng build --prod

COPY dist/ .