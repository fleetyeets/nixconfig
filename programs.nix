# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:
{

  imports =
    [ # standalone nix files.
      ./zsh.nix
    ];

  # packages
  environment.systemPackages = with pkgs; [
    ## CLI / basics
    alacritty #niri
    bat
    eza
    fastfetch
    git
    hyfetch #pride flags
    kitty
    mpv
    socat
    vim
    wget
    ## de/wm
    gnome-keyring
    fuzzel
    mako
    waybar
    wayland
    wofi
    xwayland-satellite
    # Share between hosts
    deskflow
    rustdesk-flutter
    ## GUI - generic
    discord
    gimp
    github-desktop
    ##gnomePackages
    gnomeExtensions.pop-shell
    gnomeExtensions.ddterm
    gnomeExtensions.quick-lofi
    gnomeExtensions.open-bar
    gnomeExtensions.space-bar
  ];

  # Firefox
  programs.firefox.enable = true;

  # Steam
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

  # Niri
  programs.niri.enable = true;

}
