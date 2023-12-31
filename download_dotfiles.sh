echo "Cloning dotfiles repo..."
git clone https://github.com/Adamouization/dotfiles

echo "Moving .bash* and .vimrc files to current directory (root)..."
mv -t . dotfiles/.bash_profile dotfiles/.bash_prompt dotfiles/.bashrc dotfiles/.vimrc

ehco "Deleting cloned repo..."
rm -rf dotfiles/

ls -la
echo "Successfully downloaded dotfiles."