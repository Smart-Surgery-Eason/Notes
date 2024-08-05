# Experimental Analysis of Fundamental `systemctl` Commands
## 1. Introduction
Enter the command,
```bash
sudo systemctl --help
```
will shows things like this,
```
Query or send control commands to the system manager.
Unit Commands:
...
```
 with a lot of commands. 
 
 It is not quite friendly for newbies. So I decided to list the fundamental commands and play with it.

 Btw, from the helping message. we know that `systemctl` is a command to communicate with **System Manager**. I put this term in [**Term Explored**](#terms-explored).

---

## 2. Fundamental Commands
### 1. Intuitive Exploration
 I tried to identify the fundamental commands by its name, here is what I found:
```
list-units [PATTERN...]         List units currently in memory
list-sockets [PATTERN...]       List sockets currently in memory, 
                                ordered by address
list-timers [PATTERN...]        List timers currently in memory
is-enabled PATTERN...           Check whether units are enabled
is-active PATTERN...            Check whether units are active
is-failed PATTERN...            Check whether units are failed
status [PATTERN...|PID...]      Show runtime status of one or more units
show [PATTERN | JOB]            Show properties of one or more
                                units/jobs or the manager
start UNIT...                   ...
stop UNIT...                    ...
reload UNIT...                  ...
restart UNIT...                 ...
```
### 2. list-*
I found that there are some basic terminology that I need to figure out. By abserving the names of **list-\*** commands. There are 3 terms used, they are:
- Units
- Sockets
- Timers

It looks like some fundamental things in **System Manager**. I will put these things in [**Futher Research**](#2-futher-research).
### 3. Selected commands
Finally here are the fundamental commands I consider as fundamental by their name, prioritized according to my initiation:
- [list-units](#1-list-units)
- [start](#2-start)
- [is-active](#3-is-active)
- is-enable
- stop
- disable
- enable
- status
- list-sockets
- list-timers
- is-failed
- show
- reload
- restart
- tyr-restart
- freeze
- thaw

I will explain why I experimented with this order later.

---
## 3. Experiments

### 1. list-units
from
```bash
systemctl list-units
```
, outputs 349 lines of information. 

we can see the header,
```
UNIT    LOAD    ACTIVE  SUB DESCRIPTION
```
the body,
```
...
xxx.automount
-------------
xxx.device
...
-------------
xxx.mount
...
-------------
xxx.path
...
-------------
xxx.scope
...
-------------
xxx.service
...
-------------
xxx.slice
...
-------------
xxx.socket
...
-------------
xxx.swap
...
-------------
xxx.target
...
-------------
xxx.timer
...
```
and the summary at the end,
```
...
LOAD = Reflects whether the unit definition was properly loaded.
ACTIVE = The high-level unit activation state, i.e. generalization of SUB.
SUB = The low-level unity activation state, values depend on unit type.
342 loaded units listed. Pass --all to see loaded but inactive units, too.
To show all installed unit file use 'systemctl list-unit-files'.
```
Scene there are too many units, all the listed units are acitve and I want to play `systemctl start` later, which means I need an inactive unit to play with. So I enter command
```bash
systemctl list-units --all
```
, and I found that too many items are shown. To filter out only inactive one. I search for its [man page](https://www.man7.org/linux/man-pages/man1/systemctl.1.html) and found:
```
...
COMMANDS
...
Unit Commands (Introspection and Modification)
    list-units [PATTERN]
        ...
        ...The units that are
        shown are additionally filtered by --type= and --state= if
        those options are specified.
        ...
    ...
...
```
And as read the `list-units` section, I found
```
...
        Note that this command does not show unit templates, but only
        instances of unit templates. Units templates that aren't
        instantiated are not runnable, and will thus never show up in
        the output of this command. Specifically this means that
        foo@.service will never be shown in this list — unless
        instantiated, e.g. as foo@bar.service. Use list-unit-files
        (see below) for listing installed unit template files.
...
```
It seems that units listed in `systemctl list-units` are units that instantiated from **unit templates**, and **unit templates** are **files**. 
>I added **list-unit-files** and **unit templates** to [**Terms Explored**](#1-terms-explored).
also in the `list-units` section,
```
...
        The header and the last unit of a given type are underlined
        ...
...
```
Comparing to the body of the output, I we can deduce `automounts`, `device`, `mount`, `path`, `scope`, `service`, `slice`, `socket`, `swap`, `target` and `timer` are **types** for additional fileter tag `--type=TYPE`. to prove this assumption, I enter commands
```
systemctl list-units --type=service
```
and
```
systemctl list-units --type=socket
```
yield the results below respectively,
```
...
xxx.service
...
```
```
...
xxx.socket
...
```
, proved my assumption.

Now back to the lab again, yo, this whole rhapsody, I enter command
```
systemctl list-units --all --state=inactive
```
it shows 189 units, and one of it got my interest: `ssh.service`.
### 2. start
check `ssh.servce` state, via
```bash
systemctl list-units ssh.service --all
```
the output is 
```
UNIT        LOAD   ACTIVE   SUB   DESCRIPTION
ssh.service loaded inactive dead  ...
...
```
Ima start `ssh.service` via
```bash
systemctl start ssh
```
and observe its state via
```
systemctl list-units ssh.service --all
```
the output is
```
UNIT        LOAD   ACTIVE SUB     DESCRIPTION
ssh.service loaded active running ...
...
```
prove `systemctl start` work.
### 3. is-active
using `systemctl list-units ssh.service --all` is a bit cumbersome. I'm going to check the `is-active` command, via
```
systemctl is-active ssh
```
the output is `inactivate`, but I accidentally thought that if I enter a typo, will it yield any result? so I entered
```
systemctl is-active asdfghhjkl
```
, and it yields `inactivate` too. make me feel this command is a bit dangerous. I feel it's better to check an active unit rather than an inactive one.

I start the `ssh.service` via `systemctl start ssh` and exam with `systemctl is-active ssh`, it yields `active`.

This make me feel strange too, because when I enter `systemctl list-units ssh` it shows nothing, but I have to enter `systemctl list-units ssh.service` then it shows things, and I check `systemctl --help` in the command section: `system list-units [PATTERN...]` and `is-active PATTERN...`, Look like the PATTERNs in this too command are parsed differently.
>Ignore about the [] in `system list-units [PATTERN...]`, it just indicate that anything in the [] is optional.

For knowning more about the PATTERN I check the [man page](https://www.man7.org/linux/man-pages/man1/systemctl.1.html). In the `Parameter Syntax` section. It descript that `UNIT` and `PATTERN` are `Parameter`s. `UNIT` could take a unit name and `PATTERN` take multiple `unit specification`s, then it use two examples to explain how they work. It says `UNIT` could be a unit with or without surfix and `PATTERN` is `glob pattern`. So I'm regard it as an erratum in `systemctl --help`. The correct paramter for `is-active` is `UNIT` instead of `PATTERN`, as well as `start` or other commands.
### 4. is-enable
To test this command. I need to know about what's the difference between `active` and `enable`, I check the status of `ssh.service` via `systemctl list-units ssh.servce` first, it yields
```
UNIT        LOAD   ACTIVE SUB       DESCRIPTION
ssh.service loaded active running   ...
...
```
Though there are description about the properties at the end of the result
```
LOAD   = Reflects whether the unit definition was properly loaded.
ACTIVE = The high-level unit activation state, i.e. generalization of SUB.
SUB    = The low-level unit activation state, values depend on unit type.
```
I still don't know don't know what `enable` is. So I decide to delve into the [man page](https://www.man7.org/linux/man-pages/man1/systemctl.1.html) again. Search for the keyword `is-enabled`.

In the `is-enabled` section, it only mentions all the result we might see. didn't explain what `enable` is. So I check `enable` section. I couldn't understand what it said, I could only guess.
```
...
Unit File Commands
    enable UNIT ..., enable PATH...
        Enable one or more units or unit instances. ...
        ...
    ...
...
```
From this line I assume that `unit` and `unit instances` are different. comparing to prior secctions I learned. `unit instance` is the instance of a `unit file`, so I first assume `unit` is the abbreviation of `unit file` here.
```
        ... This will create
        a set of symlinks, as encoded in the [Install] sections of
        the indicated unit files. ...
```
From this I assume `enable` will create `symlinks` from somewhere to anotherwhere. I don't understand what [Install] is. I search for it in the man page doesn't solve my problem.
```
        ... After the symlinks have been
        created, the system manager configuration is reloaded (in a
        way equivalent to daemon-reload), in order to ensure the
        changes are taken into account immediately. ...
```
It getting even more complicated, what is `system manager configuration` and what is `daemon-reload`, and make sure what changes exactly and are taken into account for what?

With so many questions. I decided not to delve deeper, or it will be overwharming. I change my direction to just run the command.
```
systemctl enable ssh
```
and check if anything logs that I can inspect to.

After I run the command, I shows
```
Synchonizing state of ssh.service with SysV service srcipt with /lib/systemd/systemd-sysv-install.
Executing: /lib/systemd/systemd-sysv-install enable ssh
```
Interesting... A new term pops up: `Sysv`
To F\*\*king knowing about what's going on. I search for `Sysv`, and I found `SysV` seems to be a init




---
## 4. xxx
---

## ?. Glorsary
### 1. Terms Explored
- System Manager
- Unit
- Socket
- Timer
### 2. Futher Research
Define these terms in **System Manager**:
- Unit
- Socket
- Timer
### 3. Reference
- [**man systemctl**](https://www.man7.org/linux/man-pages/man1/systemctl.1.html)