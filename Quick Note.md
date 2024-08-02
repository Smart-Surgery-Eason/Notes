## About `NVIDIA_VISIBLE_DEVICES` in docker container

Ezra told me this [link](https://docs.nvidia.com/holoscan/sdk-user-guide/use_igpu_with_dgpu.html) contains the code 
```bash
# Run ping distributed (c++) in iGPU container
docker run -e NVIDIA_VISIBLE_DEVICES=nvidia.com/igpu=0 $HOLOSCAN_IMG-igpu
```
might solve the problem of []
```bash
Failed to detect NVIDIA driver version.
```