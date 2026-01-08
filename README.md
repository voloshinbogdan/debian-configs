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
	sudo apt install -y clang libclang-dev llvm-dev
	sudo apt install -y lua5.1 luarocks build-essential
	```

1. install python env
	```sh
	sudo apt install -y python3-ipython python3-pip python3-venv
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

## AstroNvim

1. Install Nvim
	```sh
	wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.tar.gz
	tar xzvf nvim-linux-x86_64.tar.gz
	sudo ln -s /home/voloshin/nvim-linux-x86_64/bin/nvim /usr/bin/
	```

1. Install utils for AstroNvim
	```sh
	cargo install --locked tree-sitter-cli

    brew install ripgrep

    curl -L https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz | tar xz
    chmod +x gdu_linux_amd64
    sudo mv gdu_linux_amd64 /usr/bin/gdu

    cargo install bottom

    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
    \. "$HOME/.nvm/nvm.sh"
    nvm install 24
	```

1. Install AstroNvim
  ```sh
  mkdir ~/.config/nvim
  git clone git@github.com:voloshinbogdan/astronvim-cfg.git ~/.config/nvim
  ```

1. Run AstroNvim

### Qt Debugger pretty printers

## Qt

1. create aqt env
	```sh
	python3 -m venv .aqt-venv
	```

### Creator

1. Install creator
	```sh
	aqt -c qt_install.cfg install-tool linux desktop tools_qtcreator_gui

	sudo mv /usr/bin/qtcreator /usr/bin/qtcreator.backup
	sudo ln -s ~/Tools/QtCreator/bin/qtcreator /usr/bin/
	```

## VPN

### VPN-user
