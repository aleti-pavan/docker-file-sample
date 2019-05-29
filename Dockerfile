FROM nginx:alpine
LABEL "maintainer"="pavan.hpsa@gmail.com"
LABEL "rating"="Five Stars" "purpose"="Online Classes"
ADD index.html /usr/share/nginx/html/index.html

