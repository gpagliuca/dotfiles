
# Tmux
rm -rf ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
rm ~/.tmux.conf; cp ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

# Bash prompt
cp ~/dotfiles/bash_prompt/bash_prompt ~/.bash_prompt
LINE="source ~/.bash_prompt"
grep -qF -- "$LINE" ~/.bashrc || echo "$LINE" >> ~/.bashrc
source ~/.bashrc

# Vim
rm ~/.vimrc; cp ~/dotfiles/vim/vimrc ~/.vimrc

