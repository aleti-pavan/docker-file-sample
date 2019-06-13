FROM nginx:alpine
LABEL "maintainer"="pavan.hpsa@gmail.com"
LABEL "rating"="Five Stars" "purpose"="Online Classes"
ADD ./car_skating_pic.jpg ./index.html /usr/share/nginx/html/
EXPOSE 80
