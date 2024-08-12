

How to build 
```bash
docker build . -t holoscan_dentistry:v0.1.0-manual_test --build-arg BASE_IMAGE=nvcr.io/nvidia/clara-holoscan/holoscan:v2.2.0-igpu
```

Learn Github action: [use this as an example to try](https://github.com/smartsurgerytek/dentistry-inference-holoscan/settings/actions/runners/new?arch=x64&os=linux).