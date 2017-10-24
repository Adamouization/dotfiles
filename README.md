# Checklist when creating a new VM

#### 1. Download VirtualBox:
[VirtualBox for Windows host](download.virtualbox.org/virtualbox/5.2.0/VirtualBox-5.2.0-118431-Win.exe)

#### 2. Download your linux OS ISO:
[Ubuntu](https://www.ubuntu.com/download/desktop)

#### 3. Install VirtualBox and create your VM using [this](https://www.wikihow.com/Install-Ubuntu-on-VirtualBox) guide

#### 4. Install Guest additions:

`sudo apt-get install virtualbox-guest-additions-iso`

Manually install from the terminal:

```
mount /dev/cdrom /mnt
cd /mnt
./VBoxLinuxAdditions.run
reboot
```

Delete the guest additions:

```
cd /opt/<VirtualBoxAdditions-x.x.xx>/
sudo ./uninstall.sh
```

More info [here](https://askubuntu.com/a/22745)

#### 5. Install and Setup **GIT**

```
sudo apt-get install git
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
git config --list
```

#### 6. Install VIM and set as default git commit editor:

```
sudo apt-get install vim
git config --global core.editor "vim"
export GIT_EDITOR=vim
```
