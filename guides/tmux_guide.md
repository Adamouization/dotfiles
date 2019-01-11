# TMUX installation guide

1. Install TMUX: 

`sudo apt-get install tmux`

2. Create your `.tmux.conf` file or download the `.tmux.conf` file from this directory

3. Place your `.tmux.conf` file in your home directory

`mv .tmux.conf ~`

4. Make sure that it is named `.tmux.conf` (the dot in front will hides it)

```
cp <your_old_file_name> .tmux.conf
rm <your_old_file_name>
```

5. Start customizing your `.tmux.conf` file using your command line editor (I use Vim):

```
cd ~/
vim .tmux.conf
```

Check [this](http://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/) guide to help you get more familiar with tmux.
