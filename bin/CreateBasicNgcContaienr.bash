docker run -it --net host \
--gpus all \
-v $XAUTH:$XAUTH \
-e XAUTHORITY=$XAUTH \
-v $XSOCK:$XSOCK \
-v $nvidia_icd_json:$nvidia_icd_json:ro \
-v ~/ngc:/workspace \
-e NVIDIA_DRIVER_CAPABILITIES=graphics,video,compute,utility,display \
-e DISPLAY=$DISPLAY \
--ipc=host \
--cap-add=CAP_SYS_PTRACE \
--ulimit memlock=-1 \
--runtime=nvidia \
${NGC_CONTAINER_IMAGE_PATH}