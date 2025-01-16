### License

This repository is licensed under the [MIT License](LICENSE).

## About

Welcome to my personal dotfiles repository, where I manage all my configuration files using [GNU Stow](https://www.gnu.org/software/stow/). This setup allows me to maintain a clean and organized home directory while making it easy to apply my preferred configurations across different machines.

### Included Configurations
Here are the configurations managed in this repository and their respective destinations:

- **lvimUser**: `~/.config/lvim`
- **LvimRoot**: `~/.local/share/lunarvim/lvim/lua/lvim/core`
- **zsh**: `~/.zshrc`
- **git**: `~/.gitconfig`
- **tmux**: `~/.tmux.conf`
- **fastfetch**: `~/.config/fastfetch/config.jsonc`
- **yabai**: `~/.config/yabai`
- **skhd**: `~/.config/skhd`
- **ohmyposh**: `~/.config/ohmyposh`

### Usage
Follow these steps to use this repository and apply the configurations:

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

2.5 **Remove existing configuration files (if necessary):** 
Before applying the configurations, ensure that the original files are removed to avoid conflicts:

```bash

rm -rf ~/.config/lvim \
       ~/.local/share/lunarvim/lvim/lua/lvim/core \
       ~/.zshrc \
       ~/.gitconfig \
       ~/.tmux.conf \
       ~/.config/fastfetch/config.jsonc \
       ~/.config/yabai \
       ~/.config/skhd \
       ~/.config/ohmyposh

```

3. **Navigate to the .dotfiles directory**:
    ```bash
    cd .dotfiles
    ```

4. **Apply configurations**:
     To apply a specific configuration, run:

    ```bash
    stow <directory>
    ```

    Example: Apply lvimUser and LvimRoot
    ```bash
    stow LvimUser
    ```
    ```bash
    stow lvimRoot
    ```

6. **Apply all configurations at once**:
    ```bash
    stow .
    ```

**REMEMBER:** Some configs, like `.zshrc` and `.gitconfig`, are set with my name, so just change it to yours.
