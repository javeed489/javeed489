FROM alpine
MAINTAINER javeedjafar93@gmail.com
RUN apt update
RUN python3 pip3 install -y 
COPY /javeed/html.txt /var/usr/lib/html.txt
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]
