### How to build 
```bash
docker build . -t holoscan_dentistry:v0.1.0-manual_test --build-arg BASE_IMAGE=nvcr.io/nvidia/clara-holoscan/holoscan:v2.2.0-igpu
```

### How to Run

### Learn Github Action
Use [this][learn-github-action] as an example to try.


## Troubleshooting
### Cannot find cuda ![draft]
- Source: https://docs.nvidia.com/holoscan/sdk-user-guide/use_igpu_with_dgpu.html
- Run the bash below
```bash
COMMON_DOCKER_FLAGS="--rm --net=host
--runtime=nvidia -e NVIDIA_DRIVER_CAPABILITIES=all
--cap-add CAP_SYS_PTRACE --ipc=host --ulimit memlock=-1 --ulimit stack=67108864
"
HOLOSCAN_VERSION=2.2.0
HOLOSCAN_IMG="nvcr.io/nvidia/clara-holoscan/holoscan:v$HOLOSCAN_VERSION"
HOLOSCAN_DGPU_IMG="$HOLOSCAN_IMG-dgpu"
HOLOSCAN_IGPU_IMG="$HOLOSCAN_IMG-igpu"

# Pull images
docker pull $HOLOSCAN_DGPU_IMG
docker pull $HOLOSCAN_IGPU_IMG

# Run ping distributed (python) in dGPU container
# - Making this one the `driver`, but could be igpu too
# - Using & to not block the terminal to run igpu afterwards. Could run igpu in separate terminal instead.
docker run \
  $COMMON_DOCKER_FLAGS \
  $HOLOSCAN_DGPU_IMG \
  bash -c "python3 ./examples/ping_distributed/python/ping_distributed.py --gpu --worker --driver" &

# Run ping distributed (c++) in iGPU container
docker run \
  $COMMON_DOCKER_FLAGS \
  $HOLOSCAN_IMG-igpu \
  bash -c "./examples/ping_distributed/cpp/ping_distributed --gpu --worker"
```
- There is some line will affect the prefix, and there is a command can solve it -- by Ezra

[learn-github-action]: https://github.com/smartsurgerytek/dentistry-inference-holoscan/settings/actions/runners/new?arch=x64&os=linux

[draft]: https://img.shields.io/badge/draft-red