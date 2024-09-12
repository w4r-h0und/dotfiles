#-------------------------------------------------
#   ___  ____  _______ _________    ___   ____
#  / _ \/ __ \/ ___/ //_/ __/ _ \  / _ | /  _/
# / // / /_/ / /__/ ,< / _// , _/ / __ |_/ /  
#/____/\____/\___/_/|_/___/_/|_| /_/ |_/___/  
# by Shacker
# ------------------------------------------------
#!/usr/bin/zsh
CONTAINER=open-webui
# Check if the container is running
if docker ps | grep -q $CONTAINER; then
    # If the container is running, stop it
    docker container stop $CONTAINER
else
    # If the container is not running, start it
    docker container start $CONTAINER
fi

