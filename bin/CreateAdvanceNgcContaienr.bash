docker run -it --net host \
--gpus all \
-v $XAUTH:$XAUTH \
-v $XSOCK:$XSOCK \
-v $nvidia_icd_json:$nvidia_icd_json:ro \
-e XAUTHORITY=$XAUTH \
-e NVIDIA_DRIVER_CAPABILITIES=graphics,video,compute,utility,display \
-e DISPLAY \
--ipc=host \
--cap-add=CAP_SYS_PTRACE \
--runtime=nvidia \
--ulimit memlock=-1 \
-v /etc/group:/etc/group:ro \
-v /etc/passwd:/etc/passwd:ro \
-v $PWD:/workspace/holohub \
-w /workspace/holohub \
--group-add video \
$HOLOHUB_IMAGE