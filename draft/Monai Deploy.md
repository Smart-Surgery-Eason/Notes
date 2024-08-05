# Issues
---
## ImportError: libcudart.so.12 cannot open shared object file
### Step to reproduce
```
cd /home/smartsurgery/monai-deploy-app-sdk
conda activate monai-deploy-app-sdk
monai-deploy
```
### Expected Output
```
ImportError: libcudart.so.12 cannot open shared object file: No such file or directory
```
### Solution
```bash
sudo find / -name "libcudart.so.12"
```
the output will be like
```

```