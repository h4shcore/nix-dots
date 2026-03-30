{ ... }:
{
  programs.nixvim = {
    plugins = {
      lint = {
        enable = true;
        lintersByFt = {
          python = [ "pylint" ];
          go = [ "golangcilint" ];
          bash = [ "bash" ];
          # rust = [ "rust-analyzer" ];
          cpp = [ "clangtidy" ];
          c = [ "clangtidy" ];
          nix = [ "nix" ];
        };
      };
    };
  };
}
