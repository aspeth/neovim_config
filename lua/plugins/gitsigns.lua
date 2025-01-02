return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 1000,
        virt_text = true,
        virt_text_pos = "eol",
      },
      current_line_blame_formatter = "<author>, <author_time:%m-%d-%Y> • <summary>",
    },
  },
}
