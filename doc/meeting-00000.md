# Sprint 32 Meeting 1 - Agu 6, 2024 (Tue)
## Outline


### Jira Tickets
- Move all cards to done.
- Theoraticllay, a card should be done in one sprint. If there is any reason, it should be split into two smaller tickets or more.
- Review to with your peers and move to done.
### Gain Training images from Singapore
- Boan will get the training images from Singapore doctors.
### Create a `preparation for urology AI model` ticket for Boan
- prepare for a dataset
- review the label result
- reveiw github ai urology
### Zenfeng Dentiest Prograss
- need a secondary-local-minimum algorithm.
### ITRI: Dentist
- Zenfeng: 
- Boan:
- Manchi: They don't have AI but they can make the measurement. We activate automation via API. They will automate the dental measurement.
- Julie: They will provide a full mouth panel. **Find Old Manual Measurement Source Code**.
### UI/UX
### Certification
- **ISO27001:** Knowign the outline and let everyone know, ecpet engineering theam because we are busy until Octorber.
- **Security:** This is for engineering them, will start at **November**.
- Ask MonRong if we got any problem.
### Github Repo Naming Convention
Template:
```
domain-service-technology-owner
```
Example:
```
dentistry-data-label 
dentistry-train-pytorch (Boan)
urology-train-tensorflow (Boan)
dentistry-inference-pytorch ()
dentistry-inference-holoscan
urology-inference-holoscan
foundation-blazor-wasm
foundation-blazor-webapp

```
```
+-----------+-----------+-----------+-----------+
| DATA      | TRANING   | INFERENCE | FONDATION |
+-----------+-----------+-----------+-----------+
| Lable     |           |           |           |
| Datalake  |           |           |           |
| Pipeline  |           |           |           | 
|           |           |           |           | 
|           |           |           |           | 
|           |           |           |           | 
|           |           |           |           |
+-----------+-----------+-----------+-----------+ 
```

 
## Future Meeting
|Name|Participant|Time|
|-|-|-|
|Dentstry Images|Boan, Zenfeng, Tiong|Aug 8, 2024 (Thu) after 15:00|
|ITRI Dentistry|ITRI, Boan, ZenFeng, Manchi|Aug 15, 2024 (Thu) 14:00|
## Future Work
|Name|Description|Assignee|Deadline|
|-|-|-|-|
|Old Manual Measurement|Find old manual measurement source code (C#) written by Charlie|Boan||
|Basic CI/CD Pipeline||Ezra|Sep, Oct|
|Documentation|There is a ticket on Sprint 32|Eason||
|Urology Model|we hope there is a first urology model|Eason|Aug 30|
|Training on AWS and Benchmark|We haven't run a model training on aws, we gonna do it ASAP. Already setup aws Environemnt|Boan|Aug 9|
|Third Phase Urology|Shoudl be able to inference atery and vein, descussion of going Singapore or not|All|Sep 27|
|Go to singapore|Preapre passport and report|Annie|estimated Oct 21 (after Oct 14 when docker tiong)|
|Recording|2 minute all the misars, 2 min ptt, 2 min our dev way and techololgy difference|All|Nov 1|
|Recording|OBS, Operator|Eason|Aug 9|
|LC Translate .h5 -> .onnx||Ezra|Aug 9|
|UI/UX|the UI we need to use in singapore October, we prefer to create a program that auto start the program and start inference when power on, I need to create a draft with only functions we need and pass to Jiang|Eason|Aut 9|
## Questions
|Name|Description|Asked|Solved|
|-|-|-|-|
|Jira Link|Cause by or Related to|yes|yes|
|Dentist pipeline|There is picture they shared to we have define the works|yes|yes|
|How to name the central doc repo in our convention?||no|no|
