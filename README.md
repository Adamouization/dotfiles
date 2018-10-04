# New Linux VM in VirtualBox **Checklist**

#### 1. Download VirtualBox:
[VirtualBox for Windows host](https://www.virtualbox.org/wiki/Downloads)


#### 2. Download your linux OS ISO:
[Ubuntu](https://www.ubuntu.com/download/desktop)

[Fedora 24](http://www.tejasbarot.com/2016/06/22/download-fedora-24-final-cd-dvd-iso-32-bit-x86_64/)


#### 3. Install VirtualBox and create your basic VM using [this](https://www.wikihow.com/Install-Ubuntu-on-VirtualBox) guide


#### 4. Enable 3D acceleration and install Guest additions:

* Open a new terminal window and type `/usr/lib/nux/unity_support_test -p`. The last line should say that Unity 3D is not supported: "No". It should say yes to allow 3D acceleration, which will boost the VM's graphic abilities.

* Install tools for compiling kernel modules before installing the Guest Additions: `sudo apt update && sudo apt dist-upgrade`

* Reboot

* Install required packages for building the kernel modules: `sudo apt install build-essential module-assistant dkms`

* Prepare the system to build kernel modules: `sudo m-a prepare`

* The Guess Additions can now be installed. In the VirtualBox menu, 'Select Devices' > 'Insert Guest Additions CD image'. Then click 'Run' when prompted.

![screenshot insert guest additions](https://i.imgur.com/zzIgA8K.png)

* Shut the VM off

* In the VM display settings, allocate at least 3/4 of video memory, and enable 3D acceleration:

![screenshot 3D acceleration vm settings](https://i.imgur.com/kZXXwLO.png)

* Restart your VM. A massive graphic speed improvement should be noticed. Run `/usr/lib/nux/unity_support_test -p` again to see that Unity 3D is now supported: "Yes".


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
$ git config --global user.email xxx@xxx.com
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

Untar the `.tar.gz` file directly from the `~/Download` directory to the directory where you wish to install e.g. in your `~/Applications` directory (must support executables), otherwise the recommended installation location according to the filesystem hierarchy standard (FHS) is `/opt`:

`sudo tar -xvfz pycharm-*.tar.gz -C /opt/`

Start running the application by going to the `bin` directory and running `pycharm.sh`:

```
cd /opt/pycharm-*/bin
sh pycharm.sh &
```

Repeat this process for each `.tar.gz` file you downloaded.

More info [here](https://www.lifewire.com/how-to-install-the-pycharm-python-ide-in-linux-4091033)

Once the installation is finished, you can delete the `.tar.gz` file: `rm -rf pycharm-*.tar.gz`


#### 11. Install [TMUX](https://github.com/tmux/tmux/wiki)

`sudo apt-get install tmux`

Move the `.tmux.conf` [file](https://github.com/Adamouization/vm-configurations/blob/master/tmux_configuration/tmux.conf) to the home directory for custom settings: `cp /home/ajaamour/Projects/VmConfigurations/tmux_configuration/.tmux.conf ~`

Use [this]() script to automatically launch tmux with vertically split windows. You'll first need to copy the bash script to your desired location, then give the appropriate permissions. Then you can run it any time:

```
cp /home/ajaamour/Projects/VmConfigurations/bash_scripts/tmux_setup ~
chmod +x tmux_setup.sh
./tmux_setup.sh
```

The script opens a pane with `htop` instead of `top`, so be sure to have it installed first (otherwise change the command in the script from `top` to `htop`): 

```
sudo apt-get install htop
```
