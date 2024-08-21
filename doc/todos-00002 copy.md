- **Start Date:** Fri Aug 16, 2024
- **End Date:**  Wed Aug 21, 2024
---
# Smart360-IOS for Dr. Wu
- Build a IOS Trial Project for iPad ![Done]
  - Try UI  ![Done]
    - Text ![Done]
    - Button  ![Done]
    - InputField ![Done]
    - VideoPlayer ![Done]
  - Try Debug  ![Done]
  - Try File System. ![Done]
  - Try Odin Serialize AOT ![Done]
- Build the Smart360 Project to iPad
  - Build
    - Clean up Old Project Data ![Done] Path: `\\gyn\vr_data\smart360-files-old`
    - Load Data in Unity ![Done]
    - Put new Project Data In ![Done]
    - Original ![Done]
  - Main Menu Scene
    - Start From Main Menu ![Done]
    - Deal Issue: Nothing showing when play on main menu ![Done]
    - Deal Issue: Cannot Click Button ![Done]
    - Load Video Scene When Click Edition Button ![Done]
    - Increase Quit Button Size ![Done]
    - Quit Application ![Done]
  - Video Scene
    - Increase timeline bar height ![Done]
    - Video Control Panel ![Done]
      - Player Controller ![Done]
      - Show Video Controller ![Done]
      - Show Video Buttons ![Done]
    - FullScreen Mode ![Done]
    - Video Player ![Done]
      - **Issue:** Video not sync when change staff view. ![Done]
      - **Issue:** Video stuck when pause and resume. ![Done]
    - Stop all Video player when exit.
- Combine IOS and Andriod into one project
  - Inspect size ![Done] 1.1GB inculde library. ~200MB exclude library
  - Check the difference between `UNITY_IOS` and `IOS_PLATFORM`. ![Done] just use `Unity_IOS` 
  - Clean up real world desktop. ![Done]
  - Set `Initial XR at Runtime` in different platform. ![Done]
  - Charge Headset. ![Done]
  - Find a cable ![Done]
  - Run smartplayer360 on Unity ![Done]
  - Disable password on quest. ![Done]
  - **Issue:** [Video player staff button are not shown](#issue-video-player-staff-button-are-not-shown). ![Done]
  - **Issue:** Failed to changed view while click on staff button. ![Done]
- Oculus
  - Put Data into Andriod ![Done]
- Check all videos ![Done]
- Issue: "Lack of Edition 6" ![Done]
- Data, the 6th edition
  - Transfer Video ![Done]
  - Rename Video![Done]
    - Check video content to match ![Done]
  - Convert Video ![Done]
- Wait for Julie give me timecode and put into iPad and IOS. ![In Process]
- Debug 
  - `VideoPlayer` memery leak. ![Done]
  - Manually ene-to-end test (Julie will find someone take off) ![Done]


### Issue: Video player staff button are not shown

- Who Spawn staff buttons? `SyncVideoPlayerController.InitializeCoroutine()`
- Who Layout staff buttons? `ExactPositionLayout.Layout()`

**Solution**
  - Set `VideoPlayerSceneManager.LoadDataMethod` to `DefaultAccessor<int>`
  - Set `DefaultAccessor<int>`.value to `1`

[In Process]: https://img.shields.io/badge/In_Process-orange
[Done]: https://img.shields.io/badge/Done-green