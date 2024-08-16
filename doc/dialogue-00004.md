### How to build 
```bash
docker build . -t holoscan_dentistry:v0.1.0-manual_test --build-arg BASE_IMAGE=nvcr.io/nvidia/clara-holoscan/holoscan:v2.2.0-igpu
```
#### Docker Build Flag
|TAG|||
|-|-|-|
|--build-arg|||


### How to Run

### Learn Github Action
Use [this][learn-github-action] as an example to try.

### Vim Modes
|Mode Name|Naviation|Description|
|-|-|
|NORMAL_MODE|press `ESC` from other modes to Enter|
|INSERT_MODE|press `i` from `INSERT_MODE` to Enter|
|COMMAND_LINE_MODE|type `:` in `NORMAL_MODE`|
|VISUAL_MODE|press `v` from `NORMAL_MODE` to Enter|

### Vim shortcut
|Function|Shortcut|MODE|Note|
|-|-|-|-|
|`paste`| `p`|`NORMAL_MODE`||
|`undo`| `u`|`NORMAL_MODE`||
|`redo`| `ctrl+r`|`NORMAL_MODE`||
|`goto`| `g`+`<line_number>`|`NORMAL_MODE`||
|`delete current line`|`dd`|`NORMAL_MODE`||
|`show line number`|`:set number`|`VISUAL_MODE`||
|`show relative line number`|`:set relative number`|`VISUAL_MODE`||
|`delete current word`|`diw`|`NORMAL_MODE`|`iw` stands |
|`copy current word`|`yiw`|`NORMAL_MODE`||
|`insert a line below`|`o`|||
|`insert a line above`|`O`|
|`go to end word`|`e`|
|`go to word`|`w`|
|`set undo level`|`:set undolevels=<number>`|
|`set auto wrap line`|`:set warp`|
|`open file explorer`|`:Ex`|
|`horizontal splite window`|`sp`|
|`vertical splite window`|`vsp`|
|`run command`|`:!<command>`|

### Bash Command
|Command|Description|
|-|-|
|`!<history ID>`|run command in history with <history_id>, history could be check by run `history`|
|`!!`|run previous command|

### Learn Git 
|Command|Description|
|-|-|
|`git config --list --set-origin`|view all the config file location of **current directory**|

### Learn CMake
|Flag|Description|
|-|-|
|`--build <PATH>`|use the file `<PATH>/CMakeList.txt` to build|

### Learn gh
|Command|
|-|
|`gh repo list smartsurgerytek --json name,assignableUsers \| jq '.[] \| {name: .name, users: [.assignableUsers[].login]}'`|
|`gh repo list smartsurgerytek --json name,assignableUsers \| jq '.[] \| {name: .name}'`|

## Troubleshooting
### Cannot find cuda ![draft]
- Source: https://docs.nvidia.com/holoscan/sdk-user-guide/use_igpu_with_dgpu.html
- Run the bash below
---
# Run images
### Step 1. Set Variables
```bash
COMMON_DOCKER_FLAGS="--rm --net=host --runtime=nvidia -e NVIDIA_DRIVER_CAPABILITIES=all  --cap-add CAP_SYS_PTRACE --ipc=host --ulimit memlock=-1 --ulimit stack=67108864"
export HOLOSCAN_IMG="holoscan_dentistry:v0.1.0-manual_test"
```
### Step 2. Run ping distributed (c++) in iGPU container
```
docker run -it $COMMON_DOCKER_FLAGS $HOLOSCAN_IMG --gpu --worker
```

### docker run flags
|Flag|Description|Keep|Trying Discard|
|-|-|-|-|
|`--rm`||
|`--cap-add CAP_SYS_PTRACE`|||✅|
---

### Small Window
enter your image id
```
HOLOSCAN_IMG=
```
#### Trial-0
```
docker run --rm --net=host --runtime=nvidia -e NVIDIA_DRIVER_CAPABILITIES=all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 -it $HOLOSCAN_IMG
```
#### Trail-1
```
docker run --rm --net=host --runtime=nvidia -e NVIDIA_DRIVER_CAPABILITIES=all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 -it $HOLOSCAN_IMG
```
- There is some line will affect the prefix, and there is a command can solve it -- by Ezra

[learn-github-action]: https://github.com/smartsurgerytek/dentistry-inference-holoscan/settings/actions/runners/new?arch=x64&os=linux

[draft]: https://img.shields.io/badge/draft-red

## Troubleshooting
[LIBTIFF_4.0 problem](issue-00003.md)
