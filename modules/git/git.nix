{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user.email = "dakshgajbhiye902@gmail.com";
      user.name = "h4shcore";
      init.defaultBranch = "main";
      color.ui = "auto";
    };
  };
}
