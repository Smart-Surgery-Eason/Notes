# IGX
### IGPU
- drvier不要動，它綁在系統裡面，igpu的特性 (Define Driver)
- Linux OS底層架構，ubuntu改成jetson
- l4t-jetson=IGX的系統
- nvidia-smi不能跑，因為那是dgpu的

Holohub裡面有聰泰擷取卡yuan-qcap-700的東西
聰泰的版本在他的repo有 holohub(sdk)-2.0.0-igpu
聰泰有一個json檔可以改他風扇的轉速

### 擷取卡
右上角有一個欄位，可以找到系統的monitor
    可以看到gpu&cpu

### I need
- 聰泰擷取卡文件 Operator
- 聰泰有一包文件
- IGX 官方文件


### Applications
endoscopy tool tracking
ultrasound multiai
colon segmentation

password: smartsurgery

### holohub
default user home/holoscan/holohub
devcontainer launch 
再下指令

## Organized Notes
### Terminology
|Term|Stands for|is a|Description|References|
|-|-|-|-|-|
|L4T|Linux4Tegra|BSP|BSP for Jetson|[l4t-base], [linux-tegra-r3251]|
|Jetson|-|Mother Board|A series of embedded computing boards from Nvidia.|[wiki-nvidia-jetson]
|BSP|Board Support Package|Layer of Software|the layer of software containing hardware-specific boot firmware and device drivers and other routines that allow a given embedded operating system|[wiki-bsp], [img-00000](img-00000.png)|
|Tegra|-|SoC series|a system on a chip (SoC) series developed by Nvidia for mobile devices such as smartphones, personal digital assistants, and mobile Internet devices|[wiki-tegra]

[l4t-base]: https://catalog.ngc.nvidia.com/orgs/nvidia/containers/l4t-base
[linux-tegra-r3251]: https://developer.nvidia.com/embedded/linux-tegra-r3251
[wiki-nvidia-jetson]: https://en.wikipedia.org/wiki/Nvidia_Jetson
[wiki-bsp]: https://en.wikipedia.org/wiki/Board_support_package
[wiki-tegra]: https://en.wikipedia.org/wiki/Tegra

[done]: https://img.shields.io/badge/done-green
[skip]: https://img.shields.io/badge/skip-green