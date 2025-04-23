
#----- Tmux
rm -rf ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
rm ~/.tmux.conf; cp ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

#----- Bash prompt
cp ~/dotfiles/bash_prompt/bash_prompt ~/.bash_prompt
LINE="source ~/.bash_prompt"
grep -qF -- "$LINE" ~/.bashrc || echo "$LINE" >> ~/.bashrc

#----- Vim
rm ~/.vimrc; cp ~/dotfiles/vim/vimrc ~/.vimrc

#----- fzf
rm -rf ~/.fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

#----- zoxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
LINE='eval "$(zoxide init bash)"'
grep -qF -- "$LINE" ~/.bashrc || echo "$LINE" >> ~/.bashrc

#----- NVIM - Kickstarter
#rm -r "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
#git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim

#----- NVIM from scratch
rm -rf ~/.config/nvim
rm -rf ~/apps/nvim-linux-x86_64/
mkdir -p ~/apps
cd ~/apps
wget https://github.com/neovim/neovim/releases/download/v0.11.0/nvim-linux-x86_64.tar.gz
tar -xvzf nvim-linux-x86_64.tar.gz 
rm nvim-linux-x86_64.tar.gz 

#----- Aliases
cp ~/dotfiles/bash_aliases/bash_aliases ~/.bash_aliases

source ~/.bashrc
