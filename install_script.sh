
# Tmux
rm -rf ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
rm ~/.tmux.conf; cp ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

# Bash prompt
cp ~/dotfiles/bash_prompt/bash_prompt ~/.bash_prompt
LINE="source ~/.bash_prompt"
grep -qF -- "$LINE" ~/.bashrc || echo "$LINE" >> ~/.bashrc

# Vim
rm ~/.vimrc; cp ~/dotfiles/vim/vimrc ~/.vimrc

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# zoxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
LINE='eval "$(zoxide init bash)"'
grep -qF -- "$LINE" ~/.bashrc || echo "$LINE" >> ~/.bashrc

# NVIM
rm -r "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim

source ~/.bashrc
