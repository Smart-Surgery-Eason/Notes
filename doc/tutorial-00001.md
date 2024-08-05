# Upload an Image to Docker Hub
### Step 1: Log In to Docker Hub
```bash
docker login -u easonli0701 -p yourpassword
```
`yourpassword`: Replace with your password.

### Step 2: Find the Image Id
Find the Image Id you wanna push
```bash
docker images
```
**Output:**
```
REPOSITORY  TAG IMAGE ID        CREATED             SIZE
simple_i... 1.0 a04a00a2937d    About an hour ago   8.99GB
```
Notice the `IMAGE ID` `a04a00a2937d`. We will use it in the next step.
### Step 3: Tag the Image
```bash
docker tag a04a easonli0701/simple-app:latest
```
`a04a`: the first few characters of `a04a00a2937d`; it can be shortened to any length as long as no collision occured.
`easonli0701`: the username.
### Step 4: Push the Image to Docker Hub
```bash
docker push easonli0701/simple-app:latest
```
### Step 5: Verify the Upload
```bash
docker search easonli0701
```
**Output:**
```
NAME                       DESCRIPTION   STARS     OFFICIAL
easonli0701/simple-app    
```
# Extras

### Verify Login
**PowerShell:**
```bash
docker-credential-desktop list  
```
- **Output:**
```
{"https://index.docker.io/v1/":"easonli0701"}
```
**Bash:**
```bash
docker info | grep Username
```
- **Output:**
```
Username: easonli0701
```

### Logout
```bash
docker logout
``` 






































