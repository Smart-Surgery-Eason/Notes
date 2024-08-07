### Todos
- [ ] [Manchi PTT](https://docs.google.com/presentation/d/1J29A8D1rEBx7HbnOjjrRfVTWUgvtYI9Yo-6L6Ejc_dQ/edit#slide=id.p) - (the 7th day, Wed) (Ezra Sent Message)
- [ ] Using Official Operator to Record will be Explosive report to manchi
- [ ] Write a H264 encoder
- [ ] Add Ezra to YAUN Line group
- [ ] Workflow, for the upcoming 4 sprints 
- [ ] Priority, for the upcoming 4 sprints
- [ ] Ask Julie for permiision of the public asus one.
- [ ] Confirm with julie a date of the Endoscopy hardware.
- [ ] Draw a holoscan workflow. (Ezra)
- [ ] Run the example [h264_endoscopy_tool_tracking](https://github.com/nvidia-holoscan/holohub/tree/main/applications/h264/h264_endoscopy_tool_tracking), read documentation first
### Sprints

- **Sprint 32**: Finish Dentistry, Automation.
- **Sprint 34**: Urology Phase 1: Precision not important, a mvp. (Automation)
- **Sprint 36**: Urology Phase 2: Improvement
  - Precision: 
- **Sprint 38**: Urology Pahse 3: Atery and vien

### Workflow
- Input:
  - Use YAUN Q-Cap and its API
    - [x] Test the Endoscopy hardware ()
    - [x] Source Input
- Output
  - [x] Holoviz 
  - [x] Video Stream Output (H264 Operator in Holoscan)

### Priority

### Run `h264_endoscopy_tool_tracking`
```
./dev_container build_and_run h264_endoscopy_tool_tracking --docker_file applications/h264/Dockerfile --language cpp
```