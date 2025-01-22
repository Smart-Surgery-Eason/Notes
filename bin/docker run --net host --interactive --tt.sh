docker run --net host --interactive --tty -u root -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro -v /home/ubuntu/holohub:/workspace/holohub -w /workspace/holohub --runtime=nvidia --gpus all --cap-add CAP_SYS_PTRACE --ipc=host -e NVIDIA_DRIVER_CAPABILITIES=graphics,video,compute,utility,display -e HOME=/workspace/holohub -v /tmp/.X11-unix:/tmp/.X11-unix -v /etc/asound.conf:/etc/asound.conf --group-add 29 -e DISPLAY --group-add video -v /tmp/.docker.xauth:/tmp/.docker.xauth -e XAUTHORITY=/tmp/.docker.xauth --rm -e CUPY_CACHE_DIR=/workspace/holohub/.cupy/kernel_cache -e PYTHONPATH=/opt/nvidia/holoscan/python/lib:/workspace/holohub/benchmarks/holoscan_flow_benchmarking -v /usr/share/nvidia/nvoptix.bin:/usr/share/nvidia/nvoptix.bin:ro --ipc=host --cap-add=CAP_SYS_PTRACE --ulimit memlock=-1 --ulimit stack=67108864 holohub:ngc-v2.1.0-dgpu

docker run --net host --interactive --tty \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v /tmp/.docker.xauth:/tmp/.docker.xauth \
  -e XAUTHORITY=/tmp/.docker.xauth \
holohub:ngc-v2.1.0-dgpu