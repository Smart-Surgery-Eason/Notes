# Development Plan: Sprint 32 - 38
Here is a rough outline and description of what will we do in each sprint.
- [**Sprint 32:**](#sprint-32) Finish Dentistry and start doing IGX Automation.
- [**Sprint 34:**](#sprint-34) Urology Phase 1, precision not important, a mvp. (Automation)
- [**Sprint 36:**](#sprint-36) Urology Phase 2, add recording feature, and improve precision and stablity.
- [**Sprint 38:**](#sprint-38) Urology Pahse 3, imporve the precision of spcific atery and vien.
### Sprint 32
We will focus on making the dentistry app finished with test automation. If we have more time, we try to write some startup automation on IGX, becuase we have to do it in the urology project in the future too.

A finished dentistry project will be able to take a image as imput from a local file folder and output to a local file folder, using cli.

We gonna make 4 kinds of startup configuration for IGX, so that we can set the startup behaviour of IGX before we shutdown the computer. The configuration will be a file. We could change it by a command or just modify the file. In this stage only developers konw how to config it. In the future, we will have a startup GUI application that everyone can config it.

The 4 kinds of start configuration are:
- Do nothing
- Open Dentistry App
- Open Urology App
- Open the Startup GUI App (Future)

### Sprint 34
- We will focus on building a mvp of urology app. 
- We can config IGX to open urology App on Startup. 
- There should be a **Recording Indicator**, **Restart Button**, **Stop/Play Button** and **timeline with the current datetime**. on a control bar.
- We will test HDMI input by a real **Endoscopy Camera**.
- We will finish the CI pipeline.
### Sprint 36
- We will finsih the CD pipline.
- Add recording feature
- Increase stability.
### Sprint 38
- Make sure everything run smoothly if we gonna go to singapore.