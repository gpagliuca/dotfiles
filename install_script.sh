
# Tmux
rm ~/.tmux.conf; cp tmux/tmux.conf ~/.tmux.conf

# Bash prompt
cp bash_prompt/bash_prompt ~/.bash_prompt
LINE="source ~/.bash_prompt"
grep -qF -- "$LINE" ~/.bashrc || echo "$LINE" >> ~/.bashrc
source ~/.bashrc
