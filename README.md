# Checklist when creating a new VM

#### 1. Download VirtualBox:
[VirtualBox for Windows host](https://www.virtualbox.org/wiki/Downloads)


#### 2. Download your linux OS ISO:
[Ubuntu](https://www.ubuntu.com/download/desktop)

[Fedora 24](http://www.tejasbarot.com/2016/06/22/download-fedora-24-final-cd-dvd-iso-32-bit-x86_64/)


#### 3. Install VirtualBox and create your basic VM using [this](https://www.wikihow.com/Install-Ubuntu-on-VirtualBox) guide


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


#### 5. Enable bi-directional shared clipboard

Do this step after having installed the guest additions:

* enable Devices > Shared Clipboard > Bidirectional

* run this this command: `sudo apt-get install virtualbox-guest-dkms`

* reboot the vm


#### 6. Install and Setup **GIT**

Install git:
```
sudo apt-get install git
$ git config --global user.name "Adamouization"
$ git config --global user.email a***5@b**h.ac.uk
git config --list
```

Install [tig](https://github.com/jonas/tig), a text-mode interface for git:
`sudo apt-get tig`
or
`sudo dnf install tig`


#### 7. Install VIM and set as default git commit editor:

```
sudo apt-get install vim
git config --global core.editor "vim"
export GIT_EDITOR=vim
```

Add the VIM configuration [file](https://github.com/Adamouization/vm-configurations/blob/master/vim_configuration/.vimrc) to the home directory: `cp /home/ajaamour/Projects/VmConfigurations/vim_configuration/.vimrc ~`


#### 8. Install Python

`sudo apt-get install python`

You can also install a better version of the REPL:

`sudo apt-get install ipython`

To run it, type `ipython` instead of using `python`


#### 9. Install Java

```
sudo apt-get install default-jre
sudo apt-get install default-jdk
```


#### 10. Install [JetBrains](https://www.jetbrains.com/) IDEs

Download the IDEs from here:

* [PyCharm](https://www.jetbrains.com/pycharm/download/#section=linux)

* [WebStorm](https://www.jetbrains.com/webstorm/download/#section=linux)

* [IntelliJ IDEA](https://www.jetbrains.com/idea/download/#section=linux)

Move the `.tar.gz` file from the Download directory to the directory where you wish to install. I usually install my IDEs in my ~/Applications directory:

`mv pycharm-professional-201X.X.X.tar.gz ~/Applications`

Untar the file and start running the application:

```
tar -xvzf pycharm-professional-201X.X.X.tar.gz
cd pycharm-201X.X.X/bin
sh pycharm.sh &
```

Repeat this process for each `.tar.gz` file you downloaded.

More info [here](https://www.lifewire.com/how-to-install-the-pycharm-python-ide-in-linux-4091033)

Once the installation is finished, you can delete the `.tar.gz` file: `rm -rf pycharm-professional-201X.X.X.tar.gz`


#### 11. Install [TMUX](https://github.com/tmux/tmux/wiki)

`sudo apt-get install tmux`

Move the `.tmux.conf` [file](https://github.com/Adamouization/vm-configurations/blob/master/tmux_configuration/tmux.conf) to the home directory for custom settings: `cp /home/ajaamour/Projects/VmConfigurations/tmux_configuration/.tmux.conf ~`

Use [this]() script to automatically launch tmux with vertically split windows. You'll first need to copy the bash script to your desired location, then give the appropriate permissions. Then you can run it any time:

```
cp /home/ajaamour/Projects/VmConfigurations/bash_scripts/tmux_setup ~
chmod +x tmux_setup.sh
./tmux_setup.sh
```
