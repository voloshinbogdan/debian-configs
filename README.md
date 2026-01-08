# Порядок действий

## Базовые вещи

1. Tweaks
	```
	Keyboard -> Additional layout options -> Capslock behavior like ESC
	Windows -> Maximize
	           Minimize
	```

1. Download and install [FiraCodeNerdFont](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraCode.zip). I prefer mono normal
	```sh
	mkdir -p ~/.local/share/fonts
	cp *.ttf ~/.local/share/fonts/
	fc-cache -fv
	```
1. For second monitor using type-c
https://unix.stackexchange.com/questions/742923/debian-recognizes-usb-c-docking-station-but-monitors-do-not-work
	```
	download the latest [driver for Ubuntu](https://www.synaptics.com/products/displaylink-graphics/downloads/ubuntu) (not following guide to unpack driver for other distros, nor this displaylink-debian)
	unzip DisplayLink\ USB\ Graphics\ Software\ for\ Ubuntu5.6.1-EXE.zip
	chmod 755 displaylink-driver-5.6.1-59.184.run
	sudo ./displaylink-driver-5.6.1-59.184.run
	```

1. Download, install, configure chrome. Login in google account and chatgpt account is pretty enough

1. Creates ssh key and add to github and others:
	```sh
	ssh-keygen -t ed25519 -C "ya.bovi2012@gmail.com"
	```

1. install utils
	```sh
	sudo apt install -y htop curl pkg-config libfontconfig1-dev
	```

1. install python env
	```sh
	sudo apt install -y python3-pip python3-venv
	```

1. install cargo:
	```sh
	cargo install alacritty
	```
	OR if stuck
	```sh
	go to link https://sh.rustup.rs and run downloaded file
	```

1. install brew
	```sh
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	```

1. install lazygit
	```sh
	brew install lazygit
	```

## Terminal

### GUI

1. install alacritty
	```sh
	cargo install alacritty
	```
1. alacrity desktop
	```sh
	mkdir -p ~/.local/share/applications
	vi ~/.local/share/applications/alacritty.desktop
	update-desktop-database ~/.local/share/applications
	```
	```
	[Desktop Entry]
	Type=Application
	Name=Alacritty
	Comment=GPU accelerated terminal
	Exec=/home/voloshin/.cargo/bin/alacritty
	Icon=utilities-terminal
	Terminal=false
	Categories=System;TerminalEmulator;
	```

1. link alacritty config from home

### Shell

1. install zsh
	```sh
	sudo apt -y install zsh zplug
	```

1. link configuration zsh from home folder

1. make zsh default shell:
	```sh
	chsh -s /bin/zsh
	```
### Tmux

#### Tmuxinator

### fzf

### zoxidie

## AstroVim

### Qt Debugger pretty printers

## Qt

1. create aqt env
	```sh
	python3 -m venv .aqt-venv
	```

## VPN

### VPN-user
