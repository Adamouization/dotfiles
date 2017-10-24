# TMUX installation guide

1. Install TMUX: 

`sudo apt-get install tmux`

2. Create your .tmux.conf file or download the tmux.conf file from this directory

3. Place your .conf file in your home directory '~/'

`mv .tmux.conf ~`

4. Make sure that it is named '.tmux.conf' (the dot in front will hide it)

```
cp <your_old_file_name> .tmux.conf
rm <your_old_file_name>
```

5. Start customizing your .tmux.conf file using your editor (I use **vim**):

```
cd ~/
vim .tmux.conf
```
