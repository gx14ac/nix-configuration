{ config, pkgs, ... }:

{
 nixpkgs = {
   config.allowUnfree = true;
 };

 environment.systemPackages = with pkgs; [

	# basic
        wget 
        curl
        git
        zsh 
        gcc 
        gnumake 
        binutils 
        pkg-config 
        zip 
        unzip 
        xclip 
        htop
        openal 
        byobu 
        xorg.xev 
        xorg.xprop
        xorg.xbacklight
        evince 
        tig
        peco
        neofetch
        direnv
        dmenu
        compton
        qemu
	nasm
	tmux
	nasm
	ghq

	# terminal
        terminator

	# browser
	chromium

	# editor
        emacs
        vim
	vscode

	# programming launguage 
        go
        gcc
        libcap

	# file manager
        ranger

	# desktop manager
	feh

        # editor
        emacs
        vim 
        vscode 
  ];

  environment.variables = {
    EDITOR  = "emacs";
    BROWSER = "chromium";
    GOROOT = [ "${pkgs.go.out}/share/go" ]; 
  };
}
