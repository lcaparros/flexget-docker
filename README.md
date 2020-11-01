# flexget-docker
Flexget installation in a docker container

Run this docker container with the command below:
```
# docker run --name flexget -e TZ=Europe/Madrid -e FG_WEBUI_PASSWD=myUIpassword -p 3539:3539 lcaparros/flexget
```