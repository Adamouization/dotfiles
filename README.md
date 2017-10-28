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


#### 7. Install Python

`sudo apt-get install python`

You can also install a better version of the REPL:

`sudo apt-get install ipython`

To run it, type `ipython` instead of using `python`

#### 8. Install [JetBrains](https://www.jetbrains.com/) IDEs

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
