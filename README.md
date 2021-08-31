# Title
Ansible-pull self provision for workspace computer or servers.

## Description

- Do you have a team and want to provision (install automatically) hundreds of app and software in their computers easily?
- Have you ever need to install 100 or more in your workspace as a developer in order to start to work?
- Have you ever want easily do this on multimple computers simultaneosly?
- Have you ever wanted to easily provision your media, worspace laptop, pc or family but it take to much time to do it?
- You waste to much time when you need format a drive? this would provision all that you already have in your personal computer or server with only a command. Yes, it would take you 10 seconds to write the command instead of installing each for the hole day.

If so , this repository is for you and intend to be part of a central provision repository to easy deploy of desktop and servers. 
Keep in mind that this project hold almost 200 hundred apps or packages that I consider relevant in my workspace machines as DevOps.
You might not need all this in your workspace if you are not a DevOps but you could have and idea how to use ansible.

This is my old provision tool I happily clean and share with you people for those who want to understand ansible or those who want to fork and use for their own.
I know this is not the best coding, is not what I actually use, but you might be able to get to the point where you can use galaxy, tower, and test with molecule and pytest.

### What this project can teach you provision with ansible

- Change Backgrounds
- Add Custom keybindings
- Install packages with gpg keys
- Install with snap
- Copy, unpack rars and use file permissions.
- Download big files with progress
- Create users
- Create services
- Set your locale and keyboard language
- Set audio preferences
- Create a cronjob to auto pull your updates on this provisioning repo.
- This is just an educational ansible project.

## Requirements

- STRONGLY advice you know what you doing in your worstation, you can use vagrant way to begin with.
- FIRST, IMPORTANT! You need to create a hosts files in root folder specifing your hosts like:

    # hosts file
    [base]
    workspaces ansible_python_interpreter=/usr/bin/python3
    raspeberry-*
    [workstation]
    workspace1 ansible_ssh_private_key_file=/home/<your_user>/.ssh/id_rsa ansible_python_interpreter=/usr/bin/python3
    ubuntu-hirsute


- Understanding ansible and bash to be aware of risk in your own computer. Of course you can use the Vagranfile.
- pip to install ansible: install pip with `sudo apt install python3-pip`
- ansible-pull: install ansible with `python3 -m pip install --user ansible`
- If you want openshift installed uncomment line (remove the `#`) `- include_tasks: ../../roles/common/tasks/software/openshift.yml` from roles/workstation/tasks/mail.yml file.
- Ethernet cable internet connection since it downloads more than 3Gb packages (specially with openshift)
- Openshift installation requires a key after installation so if you want yo use it. Go for it to https://developers.redhat.com/products/codeready-containers/overview and follow instructions.

## How to use this repository

Preferable use this if you dont want to provision a workspace directly you can execute in vagrant vm:
    `vagrant up --provision`

To execute whole installation:
    `ansible-pull -U https://github.com/mikzuit/workspace-provision.git`

To execute tag installation use like: 
    `ansible-pull -U https://github.com/mikzuit/workspace-provision.git -t [write-tag-here]`

## Advice
I removed a few files that could compromise my worskpace security, please let me know if anything when wrong with vagrant provisioning.
Clone or fork this repo as much as you want as is offered under Apache License. You can comment out any package, line or software you dont want to provision with:

`#- include_tasks: ../../roles/common/tasks/software/openshift.yml`

in the roles/workstation/tasks/mail.yml file.

