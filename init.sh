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

echo -e "\e[1;32mUbuntu is set up successfully! Open ~/.zshrc and add the following plugins under oh-my-zsh's plugins field.\e[0m"
echo "1password"
echo "emoji-clock"
echo "git"
echo "lol"
echo "python"
echo "rand-quote"
echo "themes"
echo "virtualenvwrapper"

echo "And finally, do a source ~/.zshrc"
echo "~ fin."
