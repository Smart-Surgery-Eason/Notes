# Progress Review: Sprint 30


## What's our Achievement
### Dentistry
- We can run the **dentistry app** on **IGX**. (⛔refine this)

- The **dentistry app** can do inference from a `.onnx` model which is converted from a trained `.h5` model that provided by **Yita Sheng**'s training app.
- The **dentistry app** can take a **video** as input and output a sequence of images. The **video** is converted from **a sequence of dental x-ray images**.

### Multi-AI Endoscopy
- We can run **[multiai_endoscopy][multiai-endoscopy]** on IGX. (⛔should link to a external document that describe its progress)
- We can plug a HDMI source onto the input of YUAN capture card from a laptop and use its monitor as video input for Holoscan.

### Packaging Holoscan Application
- We can **package an app for IGX via writing a docker file and build the docker container on IGX**. The **docker file** is a template provided by **Holoscan SDK**.
- Everything above can run on IGX should be able to run on a **AWS EC2 g5 instance**, except to **build an docker image for IGX**. We have to write a different version of docker file and build the image on AWS, for running on AWS.

### Monai Deploy
- We can [**create a simple image processing app**][creating-a-simple-image-processing-app] for IGX. We have to run monai deploy on IGX to build the image.
- We can run the simple image processing app on IGX.
- We can do everything above on AWS.



[multiai-endoscopy]: https://github.com/nvidia-holoscan/holohub/tree/main/applications/multiai_endoscopy
[creating-a-simple-image-processing-app]: https://docs.monai.io/projects/monai-deploy-app-sdk/en/stable/getting_started/tutorials/simple_app.html