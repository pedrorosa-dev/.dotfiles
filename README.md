### License

This repository is licensed under the [MIT License](LICENSE).

## About

Welcome to my personal dotfiles repository, where I manage all my configuration files using [GNU Stow](https://www.gnu.org/software/stow/). This setup allows me to maintain a clean and organized home directory, while making it easy to apply my preferred configurations across different machines.

### Included Configurations

- **LunarVim**: `~/.config/lvim`
- **LunarVim Core**: `~/.local/share/lunarvim/lvim/lua/lvim/core`
- **Zsh**: `~/.zshrc`
- **Powerlevel10k**: `~/.p10k.zsh`
- **Git**: `~/.gitconfig`
- **Tmux**: `~/.tmux.conf`
- **Neofetch**: `~/.config/neofetch/config.conf`
- **Yabai**: `~/.config/yabai`
- **Skhd**: `~/.config/skhd`
- **Raycast**: `~/.config/raycast/extensions`

### Usage

1. **Install GNU Stow**:

    On Ubuntu:
    ```bash
    sudo apt install stow
    ```
    On macOS:
    ```bash
    brew install stow
    ```

2. **Clone the repository**:
    ```bash
    git clone https://github.com/pedrorosa-dev/.dotfiles.git
    ```


3. **Apply configurations**:
    ```bash
    stow lvim
    stow core
    stow zsh
    stow p10k
    stow git
    stow tmux
    stow neofetch
    stow yabai
    stow skhd
    stow raycast
    ```

4. **Apply all configurations at once**:
    ```bash
    stow .
    ```


