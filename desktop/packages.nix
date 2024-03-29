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
	bochs
	nasm
	tmux
	nasm
	ghq
	pciutils
	imagemagick
	bochs
	slop
	android-studio

	# terminal
        terminator

	# browser
	chromium

	# editor
        emacs
        vim

	# programming launguage 
        go
        gcc
        libcap

	# file manager
        ranger

	# image manager
	feh
  ];

  environment.variables = {
    EDITOR  = "emacs";
    BROWSER = "chromium";
    GOROOT = [ "${pkgs.go.out}/share/go" ]; 
  };
}
