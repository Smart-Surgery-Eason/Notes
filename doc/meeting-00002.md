# Meeting - Sprint 32 - Day 7 - Regular
## Agenda
- **2-3pm:** AAMA Meeting with 硏華
- **3-4:30pm:** MiSARS meeting
- **4:30-6pm:** OKR (1 on 1) with each developer

## Outline
- [Meeting - Sprint 32 - Day 7 - Regular](#meeting---sprint-32---day-7---regular)
  - [Agenda](#agenda)
  - [Outline](#outline)
    - [Gitbook](#gitbook)
    - [AI Training - Dentistry](#ai-training---dentistry)
  - [AI Inference - Dentistry](#ai-inference---dentistry)
    - [MISARS Core Fundation](#misars-core-fundation)
    - [UI/UX](#uiux)
  - [Developer](#developer)
    - [OpenCV C++ Issue](#opencv-c-issue)
    - [Review Dentistry Achivement](#review-dentistry-achivement)
    - [Urology](#urology)
    - [Future Meeting](#future-meeting)
    - [Future Work](#future-work)
    - [Issues](#issues)


### Gitbook
- Setup all the gitbook document.
- One-site documentation

### AI Training - Dentistry
- **ZhenFeng**
  - Tuning Parameters
- **Julie**
  - Two version:
    - AWS: Faster
    - PC Box: Cheaper
- **Manchi**
  - Let's worried about cost-down when there is massive manufactruing consideration.
- **Boan**
  - He put a document on somewhere I can't find. It's a table of the performace of project urology overview with training samples: 2899 in random distributed.
  - Post-processing will be very import in the future. See [Issue 0](#issues)
- **General**
  - Ureter is the the key point
  - We need more 10 labelled videos to increase our accuracy.
- **Our Expectation**
  - Increase accuracy.
- Important Anatomical Structure
  - Julie will left comment under the invisible document about hte imoprtant anatomical structure.
- **Vivi**
  - labeller prefer label all the structures at once.
- **Julie, Manchi**
  - Prefer label with priority, and skip all the less important structure.
- **Manchi**
  - Summerize the workd flow: Julie select pririty, gain 10 videos, training.
## AI Inference - Dentistry
- **Ezra**
  - OpenCV: Cuda version not match.
  - The driver is fixed.
- **Manchi**
  - We need library `OpenCV`, but we can't install `OpenCV` on IGX for now. so that we can't run the application.
- **Ezra**
  - Change to CPU.
  - Migrate to `pytorch`
  - Automation docker stage and use GitHub action to call each stage.
- **Manchi**
  - Prove in IGX as higher priority, make sure dentistry
### MISARS Core Fundation
- **Manchi** 
  - Clion: Expiration problem, we experiment CLion first, and decide weather need to buy it.
  - the t4 instance is created for ABP development, and the environment is runnable.
  - Next sprint will start doing deployment.
  - ABP should contains a tab could showing inference result of densistry app.
### UI/UX
- **Manchi**
  - We are looking for educational platform, will share later.
---
## Developer
### OpenCV C++ Issue
- **Ezra**
  - if we want to output the image. We can't utilize holoviz. 
- **Manchi**

### Review Dentistry Achivement
|Output|Machine|Cuda Extension|Runnable|
|-|-|-|-|
|File|AWS|Include|✅|
|File|IGX|Include|❌|
|Holovis|AWS|-|✅|
|Holovis|IGX|-|✅|

- **Plan B:** Disable OpenCV CUDA extension.

### Urology
---
### Future Meeting
|Title|Description|Date|
|-|-|-|
|Dentistry with ITRI|Add there source code and package with our apps|Wed Aug 14, 2024|
|YAUN meeting||

### Future Work
|Title|Description|Participant|Deadline|
|-|-|-|-|
|Ask for Document|the Project Urology overview Document||
|Conference in Vietname||Julie|in the end of November|
|A Demo|A small demo of dentistry inference that we can show on ABP|Julie, Eason|in the end of September|

### Issues
|ID|Title|Description|
|-|-|-|
|0|Post-Processing|our current inference is still noisy at current stage. We gonna try other models, pick the best model,and start tuning it.|
