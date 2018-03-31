CONTAINER_NAME="neo-compiler-privnet-with-gas"
DOCKERPRIV=$(docker ps -aqf name=$CONTAINER_NAME)

if [ -z ${DOCKERPRIV+x} ]; then 
   echo "DOCKERPRIV var is unset";
else
   echo "DOCKERPRIV=$DOCKERPRIV";
   docker exec -it $CONTAINER_NAME /bin/bash
fi
