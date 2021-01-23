FROM nginx:alpine

ADD ecoforest.conf /etc/nginx/templates/default.template
ADD nginx-conf-gen.sh /docker-entrypoint.d/15-nginx-conf-gen.sh
