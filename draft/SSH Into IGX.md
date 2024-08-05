## Quick Start
On your PC, run:
```powershell
ssh smartsurgery@192.168.1.224
```
follow the prompt, and enter the password. If you don't know the password, ask **Eason**.

If it shows `ssh: connect to host 192.168.1.224 port 22: Connection timed out`. Go to the IGX and run,
```bash
sudo systemctl restart ssh
```
run `ssh smartsurgery@192.168.1.224` again on your PC.

If it still not working, ask **Eason** first, or follow the [Full Instruction](#full-instruction).

## Full Instruction
### Step 1 - Check SSH Server Status
On the IGX Machine, enter the following command:
```bash
sudo systemctl status ssh
```
If it shows below, got to **Step 2**:
```
○ ssh.server - OpenBSD Secure Sheel server
...
    Active: inactive (dead) ...
...
```
If it shows below, go to **Step 3**:
```
● ssh.server - OpenBSD Secure Sheel server
...
    Active: active (running) ...
...
```
    
### Step 2 - Enable SSH Server
On the IGX Machine, enter the following command:
```bash
sudo systemctl start ssh
sudo systemctl enable ssh
```
Then check if it's running by [**Step 1**](#step-1---check-ssh-server-status).

### Step 3 - Find the target IP Address of the Target Machine
On the target Machine, run:
```bash
hostname -I
```
Note down the IP address, it will be something like `192.168.1.224` or `172.17.0.1`.

### Step 4 - Connect from Another Machine
**1. SSH into the Target Machine:**
use the `ssh` command followed by the username and IP address of the target mahcine. For example:
```bash
ssh smartsurgery@192.168.1.224
```
replace `smartsurgery` with the username and `192.168.1.224` with the IP address of the target machine if needed.

**2. Accept the SSH key (First Time Only):**
The first time you connect, you'll be prompted to accept the SSH key fingerprint:
```
The authenticity of host '192.168.1.224 (192.168.1.224)' can't be established.
ED25519 key fingerprint is SHA256:mp4zKQegtbp5FKPr8UIPNHaVSqF4vUDZF3UpV5EWhUo.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])?
```
Type yes and press Enter.

**3. Enter Password:**
Enter the password as the prompt shows up.
