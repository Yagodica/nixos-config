{
  programs.nixvim.plugins.telescope = {
    enable = true;

    keymaps = {

      "<leader>ff" = {
        action = "<cmd>find_files";
        options = {
          desc = "Find project files";
        };
      };
 
      "<leader>b" = {
        action = "<cmd>buffers";
      };

      "<leader>fh" = {
        action = "<cmd>help_tags";
      };

      "<leader>gf" = {
        action = "<cmd>git_files";
      };

      "<leader>of" = {
        action = "<cmd>oldfiles";
      };

      # "<leader>fg" = "live_grep";
      # "<leader>fd" = "diagnostics";
    };

    # keymapsSilent = true;

    settings.defaults = {
      file_ignore_patterns = [
        "^.git/"
        "^.mypy_cache/"
        "^__pycache__/"
        "^output/"
        "^data/"
        "%.ipynb"
      ];
      set_env.COLORTERM = "truecolor";
    };
  };
}
