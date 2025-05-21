{ config, pkgs, ... }:

{

# for global user
users.defaultUserShell=pkgs.zsh; 

# For a specific user
users.users.allie.shell = pkgs.zsh; 

# enable zsh and oh my zsh
programs = {
   zsh = {
      enable = true;
      autosuggestions.enable = true;
      zsh-autoenv.enable = true;
      syntaxHighlighting.enable = true;
      shellAliases = {
           "ls" = "eza --icons --group-directories-first";
           "ll" = "eza --icons --group-directories-first --long";
           "cat" = "bat";
      };
      ohMyZsh = {
         enable = true;
         theme = "robbyrussell";
         plugins = [
           "git"
           "npm"
           "history"
           "node"
           "rust"
           "deno"
         ];
      };
   };
};
}
