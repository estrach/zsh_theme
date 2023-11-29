# zsh_theme
This theme is built on the classic lukerandall theme which closely resembles bash.  This theme adds extra information to the prompt when using the terminal multiplexing command line utilities screen or tmux.  When using these utitlies the session name will appear in purple square brackets to inform the user which session they are using.  This can be useful when switching between multiple sessions for handling different tasks.

# Installation
Copy the file euan.zsh-theme file to the oh-my-zsh themes folder (typically located here: \~/.oh-my-zsh/themes).  Update the ZSH_THEME variable in .zshrc (\~/.zshrc) to "ZSH_THEME=euan".  Reload the zshrc file (source ~/.zshrc).  Alternatively the 

```
git clone https://github.com/estrach/zsh_theme.git ~/zsh_theme && ln -sf ~/zsh_theme/euan.zsh-theme ~/.oh-my-zsh/themes && sed -i 's/ZSH_THEME=.*/ZSH_THEME=euan/g' ~/.zshrc && source ~/.zshrc
```

## Session name
Add the following to your `~/.zshrc` file to enable session name on prompt:
```
get_mux_session_name () {
  if [ -n "$STY" ]; then
    (echo $STY | sed 's/[0-9]*\.//')
  elif [ -n "$TMUX" ]; then
    tmux display-message -p '#S'
  fi
}
```
