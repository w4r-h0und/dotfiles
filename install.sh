#!/bin/sh

# run this to clear out the terminal errors you'll get after stowing.
OS=$(lsb_release -is)


if [[ $OS == "Kali" || $OS == "Ubuntu" ]]; then
  echo "Installing for $OS..."
  sudo apt update
  sudo apt install -y eza zoxide fastfetch
elif [[ $OS == "Arch" ]]; then
  echo "Installing for $OS..."
  sudo pacman -Syu eza zoxide fastfetch
else
  echo "Unsupported OS: $OS"
  exit 1
fi

#Starship
echo "Installing others...."
curl -sS https://starship.rs/install.sh | sh
# Oh-my-posh
curl -s https://ohmyposh.dev/install.sh | bash -s
#Zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh;
wait 1;
zplug install


