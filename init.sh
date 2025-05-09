# get oh-my-zsh
sudo apt install zsh	
chsh -s $(which zsh)
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

sudo apt update

# create a barrier for appending stuff to ~/.zshrc
echo "" >> ~/.zshrc
echo "###########################################################################" >> ~/.zshrc
echo "#                                                                         #" >> ~/.zshrc
echo "#                                                                         #" >> ~/.zshrc
echo "###########################################################################" >> ~/.zshrc

# add virtualenv and virtualenvwrapper
sudo apt install python3-pip python3-virtualenv python3-virtualenvwrapper
echo "" >> ~/.zshrc
echo "# virtualenvwrapper" >> ~/.zshrc
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.zshrc
echo "export VIRTUALENVWRAPPER_PYTHON=$(which python3)" >> ~/.zshrc
echo "export VIRTUALENVWRAPPER_VIRTUALENV=$(which virtualenv)" >> ~/.zshrc
echo "source /usr/share/virtualenvwrapper/virtualenvwrapper.sh" >> ~/.zshrc

# alias python to python3
echo "" >> ~/.zshrc
echo "alias python=python3" >> ~/.zshrc

# install starship theme for terminal
curl -sS https://starship.rs/install.sh | sh
echo "" >> ~/.zshrc
echo "# starship terminal theme" >> ~/.zshrc
echo 'eval "$(starship init zsh)"' >> ~/.zshrc

sudo apt update

# github setup
git config --global init.defaultBranch main
read -p "Enter your name for GitHub: " name
git config --global user.name "$name"
read -p "Enter your email ID for GitHub: " email
git config --global user.email "$email"

# ssh key setup
ssh-keygen -t ed25519 -C "$email"
cat ~/.ssh/id_ed25519.pub
git config --global gpg.format ssh
git config --global user.signingkey $HOME/.ssh/id_ed25519.pub

echo -e "\e[1;32mUbuntu is set up successfully! Open ~/.zshrc and add the following plugins under oh-my-zsh's plugins field.\e[0m"
echo "1password"
echo "emoji-clock"
echo "git"
echo "lol"
echo "python"
echo "rand-quote"
echo "themes"
echo "virtualenvwrapper"

echo -e "\e[1;32mIn GitHub, go to SSH and GPG keys -> Disable Vigilant Mode so commits are verified by the ssh key.\e[0m"
echo -e "\e[1;32mAnd finally, do a source ~/.zshrc\e[0m"
echo -e "\e[1;32m~ fin.\e[0m"
