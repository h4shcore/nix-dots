{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user.email = "97403914+h4shcore@users.noreply.github.com";
      user.name = "h4shcore";
      init.defaultBranch = "main";
      color.ui = "auto";
    };
  };
}
