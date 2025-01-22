# File Structure
This document contain the **file structure definition**.

## Outline


## Root Folders
- `draft`: the unmanaged `.md` files.
- `bin`: Executables.
- `doc`: Managed `.md` files.



## Create and Delete a `.md`
**⚠️ DON'T CREATE YOUR `.md` FILES INSIDE `doc` FOLDER DIRECTLY!!!**

### Create
Create your `.md` file on the `draft` folder, via
```pwsh
echo "" > draft\your_md_name.md
```
### Delete
Delete your `.md` file on the `draft` folder, via
```pwsh
rm draft\your_md_name.md
```
## Add and Remove 
### Add
Add a `.md` File from `draft` to `doc`. 
```pwsh
$filename='your_md_name.md'
mv draft\$filename doc\$filename
```
### Remove
Remove a `.md` file from `doc` to `draft`.
```pwsh
$filename='your_md_name.md'
mv doc\$filename draft\$filename
```
