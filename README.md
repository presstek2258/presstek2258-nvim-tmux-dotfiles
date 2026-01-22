# presstek2258-nvim-tmux-dotfiles

- dotfiles for neovim and tmux
- should be done on a fresh nvim / tmux install

---

## update and install requirements

```bash
yay -Syu && yay -S neovim tmux npm fzf
```

## clone repo directly to your .config

> WARNING: THIS WILL REPLACE FILES!!!

```bash
git clone https://github.com/presstek2258/presstek2258-nvim-tmux-dotfiles.git ~/temp-config
rm -rf ~/temp-config/.git
sudo cp -r ~/temp-config/. ~/
rm -rf ~/temp-config
sudo chmod -R 755 ~/.config
```

## add to .zshrc (optional)

```bash
# sets path for tmuxifier and starts it
export PATH="$HOME/.tmuxifier/bin:$PATH"
eval "$(tmuxifier init -)"
```
