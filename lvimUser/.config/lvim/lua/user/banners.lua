local M = {}

M.dashboard = function()
  local headers = {
    {
      "                                                              ",
      "    ⢀⣀⣤⣤⣤⠤⢤⣤⣤⣤⣤⣄⣀⡀           ⢀⣠⣤⣄⡀            ⣀⣀⣀⣤⣤⣤⣤⣤⣤⣤⣤⣀⡀   ",
      " ⢀⣤⠚⠩⠁⡄ ⠠⣤⠒⠒⣂ ⢈⣨⣭⣿⠛⠶⣦⣤⣄⡀   ⢠⣾⡟⠉⠉⠝⠿⠇    ⢀⣠⡤⠔⠒⣻⠟⠋⠩⠉⢁⣀⡀  ⣶  ⠙⡛⠷  ",
      " ⠸⢟⡠⠒⢊⡤  ⠋⣠ ⠈⣉⣉⣉⣉⣀⣛⣿⡒⠭⡿⢿⣷⣤⣤⣀⣽⣇⣴⠆⣴⡃⢀⣠⣤⠴⣚⣫⡥ ⠒⠛⠁⣀⣉⣉⣙⢏⡉  ⢀⣼⣤⣜⠳⡦⠂  ",
      "   ⠐⠚⠫⣤⠖⢣⣤⡕ ⠉⣩⣤⠔ ⠂⣋⣭⣥⣤⠴⠛⣛⠈⢩⣿⠿⠛⢉  ⡐⠞⠫⢍⠙⣓⠢⠴⣥⣍⣙⠛⢓⡢⢤⣬⠉⠅ ⣤⡜⢛⠻⠛⠉⠁   ",
      "      ⠘⢔⢎⣡⡔⠂⣠⡿⠁⠒⢛⡻⢛⣩⠅  ⠉  ⠚⣯⣄⢠⣿⢀⣾⠇ ⠓ ⠁⠂⠈⠍⠐⠈⡉⣿⠛⣛⠛⠉⣤⣰⣿⣿⡟⠛⠁      ",
      "        ⠙⠛⠐⠚⠋ ⠒⣲⡿⠇⣋        ⢺⡏⠈⣀ ⠉⠈        ⠙⢿⠟⢰⣖⡢ ⠂⠒⠚⠉         ",
      "             ⣴⠛⠅⢀⣾⠟⢃       ⢹⠃⠠⠁⠈⠩         ⢠⣿ ⣀⢹⣿⡷             ",
      "             ⢿⣤⢚⣫⠅         ⢸⠇ ⢚ ⢀         ⣸⡇ ⠉⣿⣿⠇             ",
      "             ⠈⠛⢻⣥⡚⠔⣠⢣⣄⡀    ⢸⡇ ⢘ ⠈ ⠠⠈    ⣀⣰⡿⣧⣄⠾⠋⠁              ",
      "                ⠈⠑⠁        ⠘⣿⡀⣈⣀    ⠈  ⠈⠙⠁                    ",
      "                            ⠘⣷⠁                               ",
      "                             ⠙⣤                               ",
      "                              ⠛⠂                              ",
      "                                                              ",
    },
    {
      "                            ",
      "          _.--._       /|",
      "        .'()..()`.    / /",
      "       ( `-.__.-' )  ( ( ",
      "        \\        /    \\ \\",
      "         \\      /      ) )",
      "       .' -.__.- `.-.-'_.'",
      "     .'  /-____-\\  `.-'",
      "     \\  /-.____.-\\  /-.",
      "      \\ \\`-.__.-'/ /\\|\\|",
      "     .'  `.    .'  `.",
      "     |/\\/\\|    |/\\/\\|",
      "                            ",
    },
    {
      "   ⠀⠀⢀⣴⣶⣿⣿⣷⡶⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⢶⣿⣿⣿⣿⣶⣄⠀",
      "  ⠀⢠⡿⠿⠿⠿⢿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣿⡿⠿⠿⠿⠿⣦⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠈⠙⠿⣿⡿⠆⠀⠀⠀⠀⠰⣿⣿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⣀⣤⡤⠄⢤⣀⡈⢿⡄⠀⠀⠀⠀⢠⡟⢁⣠⡤⠠⠤⢤⣀⠀⠀⠀⠀",
      "  ⠐⢄⣀⣼⢿⣾⣿⣿⣿⣷⣿⣆⠁⡆⠀⠀⢰⠈⢸⣿⣾⣿⣿⣿⣷⡮⣧⣀⡠⠀",
      "  ⠰⠛⠉⠙⠛⠶⠶⠏⠷⠛⠋⠁⢠⡇⠀⠀⢸⡄⠈⠛⠛⠿⠹⠿⠶⠚⠋⠉⠛⠆",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡇⠀⠀⢸⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⢻⠇⠀⠀⠘⡟⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠰⣄⡀⠀⠀⣀⣠⡤⠞⠠⠁⠀⢸⠀⠀⠀⠀⡇⠀⠘⠄⠳⢤⣀⣀⠀⠀⣀⣠⠀",
      "  ⠀⢻⣏⢻⣯⡉⠀⠀⠀⠀⠀⠒⢎⣓⠶⠶⣞⡱⠒⠀⠀⠀⠀⠀⢉⣽⡟⣹⡟⠀",
      "  ⠀⠀⢻⣆⠹⣿⣆⣀⣀⣀⣀⣴⣿⣿⠟⠻⣿⣿⣦⣀⣀⣀⣀⣰⣿⠟⣰⡟⠀⠀",
      "  ⠀⠀⠀⠻⣧⡘⠻⠿⠿⠿⠿⣿⣿⣃⣀⣀⣙⣿⣿⠿⠿⠿⠿⠟⢃⣴⠟⠀⠀⠀",
      "  ⠀⠀⠀⠀⠙⣮⠐⠤⠀⠀⠀⠈⠉⠉⠉⠉⠉⠉⠁⠀⠀⠀⠤⠊⡵⠋⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠈⠳⡀⠀⠀⠀⠀⠀⠲⣶⣶⠖⠀⠀⠀⠀⠀⢀⠜⠁⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⢀⣿⣿⡀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    },
    {
      "  ⣿⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⣛⣛⣛⣛⣛⣛⣛⣛⡛⠛⠛⠛⠛⠛⠛⠛⠛⠛⣿",
      "  ⣿⠀⠀⠀⠀⢀⣠⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣤⣀⠀⠀⠀⠀⣿",
      "  ⣿⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⡀⠀⣿",
      "  ⣿⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣤⣿",
      "  ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "  ⣿⠀⠈⢻⣿⠿⠛⠛⠛⠛⠛⢿⣿⣿⣿⣿⣿⣿⡿⠟⠛⠛⠛⠛⠻⣿⣿⠋⠀⣿",
      "  ⣿⠛⠁⢸⣥⣴⣾⣿⣷⣦⡀⠀⠈⠛⣿⣿⠛⠋⠀⢀⣠⣾⣿⣷⣦⣤⡿⠈⢉⣿",
      "  ⣿⢋⣩⣼⡿⣿⣿⣿⡿⠿⢿⣷⣤⣤⣿⣿⣦⣤⣴⣿⠿⠿⣿⣿⣿⢿⣷⣬⣉⣿",
      "  ⣿⣿⣿⣿⣷⣿⡟⠁⠀⠀⠀⠈⢿⣿⣿⣿⢿⣿⠋⠀⠀⠀⠈⢻⣿⣧⣿⣿⣿⣿",
      "  ⣿⣿⣿⣿⣿⣿⣥⣶⣶⣶⣤⣴⣿⡿⣼⣿⡿⣿⣇⣤⣴⣶⣶⣾⣿⣿⣿⣿⣿⣿",
      "  ⣿⣿⣿⡿⢛⣿⣿⣿⣿⣿⣿⡿⣯⣾⣿⣿⣿⣮⣿⣿⣿⣿⣿⣿⣿⡟⠿⣿⣿⣿",
      "  ⣿⣿⡏⠀⠸⣿⣿⣿⣿⣿⠿⠓⠛⢿⣿⣿⡿⠛⠛⠻⢿⣿⣿⣿⣿⡇⠀⠹⣿⣿",
      "  ⣿⣿⡁⠀⠀⠈⠙⠛⠉⠀⠀⠀⠀⠀⠉⠉⠀⠀⠀⠀⠀⠈⠙⠛⠉⠀⠀⠀⣿⣿",
      "  ⣿⠛⢇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡸⠛⣿",
      "  ⣿⠀⠈⢳⣶⣤⣤⣤⣤⡄⠀⠀⠠⠤⠤⠤⠤⠤⠀⠀⢀⣤⣤⣤⣤⣴⣾⠃⠀⣿",
      "  ⣿⠀⠀⠈⣿⣿⣿⣿⣿⣿⣦⣀⡀⠀⠀⠀⠀⠀⣀⣤⣾⣿⣿⣿⣿⣿⠇⠀⠀⣿",
      "  ⣿⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⣿",
      "  ⣿⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⣿",
      "  ⣿⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠁⠀⠀⠀⠀⣿",
      "  ⣿⠀⠀⠀⠀⠀⠀⠈⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⣿",
      "  ⠛⠛⠛⠛⠛⠛⠛⠛⠛⠈⠛⠛⠛⠛⠉⠉⠛⠛⠛⠛⠁⠛⠛⠛⠛⠛⠛⠛⠛⠛",
    },
    {
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⠿⠿⠿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠠⣤⣦⣶⣦⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⣿⣿⣿⣿⠋⠉⠙⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⣿⣿⣿⣿⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⣿⣿⣿⣿⣀⣀⣀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠙⠛⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
    },
    {
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⡟⠋⢻⣷⣄⡀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⣤⣾⣿⣷⣿⣿⣿⣿⣿⣶⣾⣿⣿⠿⠿⠿⠶⠄⠀",
      "⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠉⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⠟⠻⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣆⣤⠿⢶⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠑⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠸⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠉⠉⠙⠛⠋⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    },
    {
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣔⣮⣽⣽⣲⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣎⢺⠿⠋⠭⠙⠻⣟⣻⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⠀⣠⠤⠤⠤⠤⠤⠒⠒⣒⡩⠭⣖⡇⣿⠀⣂⠂⣸⣉⣿⢸⣒⡬⢭⣐⡒⠒⠤⠤⠤⠤⠤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⣖⣭⣶⣤⣈⣙⣓⣿⡯⠍⠀⠀⠒⢒⣂⣉⣩⣤⣧⣿⣾⡯⢹⢅⣹⣿⣼⣦⣭⣉⣐⡒⠒⠀⠀⢠⡖⢉⡛⠓⠀⢀⣈⠉⡉⠀⠒⠢⢄⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⢀⡴⣩⣾⠋⢉⠿⠲⠭⣿⠟⠉⣠⡄⢸⠛⠛⠙⠽⠹⠇⠀⠈⠻⢾⣽⣛⣯⡷⠟⠁⡰⠠⢿⠋⠙⠛⣿⡇⣸⣿⡥⢼⡽⢛⢻⠥⡤⢬⡉⠲⡄⠈⠇⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⢀⠎⢰⢫⣧⠖⡡⢚⡥⡞⢁⣴⣾⣻⡿⠿⢤⠀⣠⠖⢦⡀⣠⠖⠲⣀⠼⠻⡁⠀⣀⡴⠛⠦⣀⡤⣄⢐⡴⠛⠻⡉⢻⡎⠠⠇⣾⡀⠈⠲⢾⡆⠘⠀⣤⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⣸⠀⠇⢸⠔⡫⠖⣿⣦⣾⢻⠙⣲⣿⡗⠀⢺⠿⡗⠀⢐⡿⣷⠒⠦⣿⡖⠀⣷⠞⠹⣿⣭⣒⣲⣾⣿⠁⠶⡖⢦⡙⢮⡇⠀⠀⣿⣈⠓⢌⡀⡇⠀⠀⣿⠀⠀⠀⠀⠀",
      "  ⠀⣀⡠⠔⠚⢹⠀⡆⠘⣯⣴⡾⠛⠩⠎⠂⠂⠉⢸⡇⠀⢸⠀⡇⠀⢸⡇⢸⠀⠀⣿⣧⠾⢻⡄⢦⣈⠑⠢⣀⠀⣿⠀⢀⣿⣧⣽⢟⡇⠀⡀⣿⠙⢳⣦⣌⡇⠀⡄⡏⠑⠢⢄⣀⠀",
      "  ⠘⠻⢶⣿⣓⠾⡄⢣⠀⠹⣍⣉⣳⣦⣀⡴⠒⣓⣿⡇⠀⢸⠀⡇⠀⢸⡇⢸⠀⠀⣿⠀⠀⠈⠳⢦⣬⣽⣶⣄⠙⣿⠘⣿⣿⠟⠁⢸⡇⢀⠃⣿⡖⣿⣭⣅⡇⢠⡷⡷⢚⣿⣶⠞⠛",
      "  ⠀⠀⠀⠉⠻⣇⠙⣄⠱⢀⠘⠳⠤⢼⣫⣴⣉⣠⣿⣇⡀⠻⣶⡯⣤⢸⣧⣾⣀⡀⠻⣤⣆⡠⣖⣒⡒⠻⢿⡿⣧⣿⣀⠑⢧⣤⣶⣾⡇⣼⠶⠷⠒⠒⠚⠋⢗⣼⡷⣻⠿⠋⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠈⠑⢌⠳⢤⣉⣒⣪⣿⠟⠁⠉⠉⢙⣿⣍⣿⢟⣳⡜⢹⣿⣙⣧⣍⣿⣟⢻⣿⡟⢻⣿⣷⣶⣿⣟⠛⠿⣽⣶⣿⣿⣽⣷⣏⣶⣾⣿⣟⣻⣿⠟⣫⠞⠁⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠈⠳⣔⡄⠙⣇⠈⢣⡀⣠⢶⣿⣶⣮⣭⣽⣿⡖⠻⣶⣾⡧⠾⣿⣦⢍⡓⢶⣿⠀⢹⣿⡓⢌⠳⡄⣤⠞⢹⡶⣌⠳⣄⡼⠃⣠⠋⢀⣾⠞⠁⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢮⢆⠈⢧⠀⢳⡇⢆⠙⠦⣍⠉⠀⢸⡇⠀⣿⠈⡇⠀⢸⠙⡇⠁⢸⢹⠀⢸⠃⢻⠀⠀⡇⢹⡇⠀⣿⣮⣗⡿⠁⣴⠏⡠⣷⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢯⡆⠈⢧⠀⣿⣤⣉⠲⢤⡉⠲⣼⡇⠀⣿⠀⡇⠀⢸⠀⡇⠀⢸⢸⠀⢸⠀⢸⠀⠀⡇⢸⡧⣶⣿⣿⣻⠁⢰⠏⢠⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡛⠀⠘⠦⢤⣤⣭⣉⡲⣌⠆⣿⠇⠀⣿⣀⡇⠀⢼⣤⡇⠀⢸⢼⡀⢸⠀⣼⠀⣀⡧⠞⡇⢿⡉⠀⣀⡀⠼⠀⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠳⠆⠤⡾⡷⣶⣖⣢⣭⣽⡾⠛⢾⡓⣬⠷⠺⣭⣶⣬⣵⡯⣗⣿⡒⣲⠟⠻⣖⢢⣿⠿⣷⣲⣬⣽⡾⠯⠭⠿⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠀⠈⠙⠫⣕⢤⣑⡤⣞⡻⠭⠟⠒⠚⠛⠓⠒⠒⠒⠻⠭⢕⣳⢬⣋⡡⣾⠕⠋⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⣴⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢢⡞⠁⠀",
    },
    {
      "                                                                 ",
      "                              ⣽⣿⣿⣿⣯",
      "   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣮⣟⣻⣵⣿⣮⣟⣻⣥⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀  ⠀⠀⠀⣀⣠⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⢀⣠⣶⣿⣿⣿⣿⣿⣿⣷⣶⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣵⣮⣿⠿⣿⣵⣮⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣧⣤⣤⣤⣤⣤⣤⣤⣤⣤⣀⡀⠀",
      "  ⣴⣿⠟⠁⠀⠀⠉⠙⠛⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠿⠿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⠿⠿⠿⣿⣿⣿⣿⣿⣆",
      "⣧⣾⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⣀⠀⠀⠀⠀⣀⡀⠀⠀⣀⡀⠀⠀⠀⢀⣀⡀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⢠⣾⣿⡇⠀⠀⠀⠀⠈⢻⣿⣿⣿",
      "⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣧⠄⢠⣾⣿⣷⡄⣤⣾⣿⣿⣤⣾⣿⣿⠀⣠⣴⢿⣿⣿⣷⣦⣾⣀⣤⣶⣿⣿⣿⣦⡀⠀⣸⣿⣿⡇⠀⠀⠀⠀⠀⠘⣿⣿⣿",
      "⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠈⣿⣿⡇⠀⠀⣿⣿⡏⠀⠀⢸⣿⣿⡏⠈⣿⠟⣾⣿⣷⣄⠀⠉⠉⠁⠀⠙⣿⣿⡏⠻⣿⣿⣿⠆⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⣿⣿⣿",
      "⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⣿⣿⡇⠀⠀⢸⣿⣿⡇⠈⠁⠀⢻⣿⣿⣿⣿⣶⣤⣀⠀⠀⣿⣿⣧⣴⣿⠟⠁⠀⣿⣿⣿⡇⠀⠀⠀⠀⠀⢸⣿⣿⣿",
      "⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⢀⣤⣶⣶⡆⢸⣿⣿⡇⠀⠀⣿⣿⡇⠀⠀⢸⣿⣿⡇⠀⠀⠀⠀⠉⠛⠿⢿⣿⣿⣿⣷⠀⣿⣿⡿⠋⠁⠀⠀⠀⣿⣿⣿⡇⠀⠀⠀⠀⠀⢸⣿⣿⣿",
      "⡏⢻⣿⣿⣿⣷⣄⡀⠀⢀⣠⣿⣿⣿⣿⠁⢸⣿⣿⣇⠀⣠⣿⣿⣇⠀⠀⣸⣿⣿⡇⠀⠀⠀⢀⣀⣀⣀⡀⠈⠛⣿⣿⠀⣿⣿⣇⠀⠀⢀⣀⠀⣿⣿⣿⠁⢀⣀⣀⡀⠀⢸⣿⣿⡟",
      "  ⠙⢿⣿⣿⣿⣿⣿⡿⠟⠁⠀⠈⠁⠀⠛⢿⣿⣿⡿⠛⢿⣿⣿⡿⠀⠛⢿⣿⣿⡿⠋⣾⠿⠿⠿⣿⣿⣿⣷⡿⠋⠘⠿⣿⣿⣿⣾⠟⠁⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠋⠀",
      "  ⠀⠀⠈⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⣠⣤⣤⡉⠁⢀⣀⣼⣿⣿⣄⣀⠀⠀⠈⣡⣤⣀⠉⠀⠀⢀⣤⣍⠉⢁⣠⣤⡀⠀⠀⠉⠉⠀⣀⣤⣮⡉⠉⠉⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⠻⠿⢿⣿⡿⠿⠛⣿⣿⣿⠛⠛⢠⣶⣾⡿⣿⣿⣷⣶⡶⢿⣿⣿⣷⠿⢿⣿⣿⣦⠀⢠⣶⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣶⣄⡀⠀⠀⠀⠀⣿⣿⣿⠀⠀⢸⣿⣿⡇⠀⢸⣿⣿⡇⢸⣿⣿⡇⠀⠀⣿⣿⡏⠀⠀⣿⣿⣿⠈⢻⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣶⣤⣄⠀⢻⣿⣿⠀⠀⢸⣿⣿⡇⠀⢸⣿⣿⡇⢸⣿⣿⡇⠀⠀⣿⣿⡇⠀⠀⢻⣿⣿⣶⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⢿⣿⣿⣿⡆⣼⣿⣿⠀⠀⢸⣿⣿⡇⠀⢸⣿⣿⡇⢸⣿⣿⡇⠀⠀⣿⣿⡇⠀⠀⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣤⣤⣤⣄⡈⢻⣿⢇⣿⣿⣿⣄⣠⣼⣿⣿⣧⣤⣸⣿⣿⡇⣸⣿⣿⣇⠀⠀⣿⣿⣧⣀⣀⣿⣿⣿⣄⣀⣠⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢾⠛⠛⠛⠻⢿⣿⡿⠟⠁⠈⠙⠿⣿⠟⠋⠉⠉⠛⠿⣿⠿⠛⠉⠀⠻⢿⡿⠛⠁⠀⠻⣿⡿⠋⠈⠙⠻⢿⣿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "                                                                 ",
    },
    {

      "                                                              ",
      " ██████╗  ██████╗ ███████╗ █████╗       ███╗   ██╗██╗   ██╗██╗███╗   ███╗",
      " ██╔══██╗██╔═══██╗██╔════╝██╔══██╗      ████╗  ██║██║   ██║██║████╗ ████║",
      " ██████╔╝██║   ██║███████╗███████║█████╗██╔██╗ ██║██║   ██║██║██╔████╔██║",
      " ██╔══██╗██║   ██║╚════██║██╔══██║╚════╝██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
      " ██║  ██║╚██████╔╝███████║██║  ██║      ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
      "  ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝      ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
      "                                                                         ",
      "                                                              ",
    },
    {
      "          ▀████▀▄▄              ▄█ ",
      "            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ",
      "    ▄        █          ▀▀▀▀▄  ▄▀  ",
      "   ▄▀ ▀▄      ▀▄              ▀▄▀  ",
      "  ▄▀    █     █▀   ▄█▀▄      ▄█    ",
      "  ▀▄     ▀▄  █     ▀██▀     ██▄█   ",
      "   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ",
      "    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ",
      "   █   █  █      ▄▄           ▄▀   ",
    },
    {
      "9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP",
      " 9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP",
      "  `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'",
      "    `9XXXXXXXXXXXP' `9XX'   DIE    `98v8P'  HUMAN   `XXP' `9XXXXXXXXXXXP'",
      "        ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~",
      "                        )b.  .dbo.dP'`v'`9b.odb.  .dX(",
      "                      ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.",
      "                     dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb",
      "                    dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb",
      "                    9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP",
      "                     `'      9XXXXXX(   )XXXXXXP      `'",
      "                              XXXX X.`v'.X XXXX",
      "                              XP^X'`b   d'`X^XX",
      "                              X. 9  `   '  P )X",
    },
    {
      "   ██████╗ ███╗   ██╗",
      "   ██╔══██╗████╗  ██║",
      "   ██████╔╝██╔██╗ ██║",
      "   ██╔══██╗██║╚██╗██║",
      "   ██║  ██║██║ ╚████║",
      "   ╚═╝  ╚═╝╚═╝  ╚═══╝",
    },
  }
  return headers[12]
end

return M