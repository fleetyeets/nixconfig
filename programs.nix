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
    fastfetch
    git
    kitty
    vim
    wget
    ## de/wm
    wayland
    wofi
    ## GUI - generic
    deskflow
    discord
    gimp
    github-desktop
    rustdesk-flutter
    ##gnomePackages
    gnomeExtensions.pop-shell
    gnomeExtensions.ddterm
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

}
