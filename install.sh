#!/bin/sh

# run this script to clear out the terminal errors you'll get after stowing the dotfiles directory


OS=$(lsb_release -is)


if [[ $OS == "Kali" || $OS == "Ubuntu" ]]; then
  echo "Installing for $OS..."
  sudo apt update
  sudo apt install -y eza zoxide fastfetch ripgrep
elif [[ $OS == "Arch" ]]; then
  echo "Installing for $OS..."
  sudo pacman -Syu eza zoxide fastfetch ripgrep
else
  echo "Unsupported OS: $OS"
  exit 1
fi


#Starship
echo "Installing others...."
wait 1;
#FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
#Starship
curl -sS https://starship.rs/install.sh | sh
# Oh-my-posh
curl -s https://ohmyposh.dev/install.sh | bash -s
#Zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh;
wait 1;
zplug install

source ~/.zshrc

