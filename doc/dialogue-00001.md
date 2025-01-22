- **Participater:** Ezra, Eason

---
# About `NVIDIA_VISIBLE_DEVICES` in docker container

Ezra told me this [link](https://docs.nvidia.com/holoscan/sdk-user-guide/use_igpu_with_dgpu.html) containing the command:
```bash
# Run ping distributed (c++) in iGPU container
docker run -e NVIDIA_VISIBLE_DEVICES=nvidia.com/igpu=0 $HOLOSCAN_IMG-igpu
```
It might solve the problem of [this](https://github.com/Smart-Surgery-Eason/IGX-Pull-n-Build?tab=readme-ov-file#appoarch-2-solve--v-errors):
```bash
Failed to detect NVIDIA driver version.
```