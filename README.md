# Dotfiles

Personal dotfiles managed with GNU Stow.

## Structure

- `zsh/` - Zsh shell configuration (.zshrc)
- `tmux/` - Tmux configuration (.tmux.conf)
- `git/` - Git configuration (.gitconfig)
- `nvim/` - Neovim configuration

## Installation

1. Clone this repository:
   ```bash
   git clone <repository-url> ~/.dotfiles
   ```

2. Navigate to the dotfiles directory:
   ```bash
   cd ~/.dotfiles
   ```

3. Use GNU Stow to create symlinks:
   ```bash
   stow zsh tmux git nvim
   ```

## Usage

- To add a new package: Create a directory and add your dotfiles, then run `stow <package-name>`
- To remove a package: Run `stow -D <package-name>`
- To restow (useful after updates): Run `stow -R <package-name>`

## Dependencies

- GNU Stow