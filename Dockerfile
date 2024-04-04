FROM nginx:latest as main
COPY . /usr/share/nginx/html

# multi stage container 

FROM nginx:alpine
COPY --from=main /usr/share/nginx/html /usr/share/nginx/html