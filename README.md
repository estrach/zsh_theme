# zsh_theme
This theme is built on the classic lukerandall [oh-my-zsh](https://ohmyz.sh/) theme which closely resembles bash.  This theme adds extra information to the prompt in magenta square brackets separated by a `|` symbol.  The extra information includes the terminal multiplexer session name and time when the prompt appeared.  This can be useful when switching between multiple sessions for handling different tasks and determining roughly when the commands were last run.

# Installation
First install [oh-my-zsh](https://ohmyz.sh/#install) Copy the file euan.zsh-theme file to the oh-my-zsh themes folder (typically located here: \~/.oh-my-zsh/themes).  Update the ZSH_THEME variable in .zshrc (\~/.zshrc) to "ZSH_THEME=euan".  Reload the zshrc file (source ~/.zshrc).  Alternatively run the following commands:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/estrach/zsh_theme.git ~/zsh_theme && ln -sf ~/zsh_theme/euan.zsh-theme ~/.oh-my-zsh/themes && sed -i 's/ZSH_THEME=.*/ZSH_THEME=euan/g' ~/.zshrc && source ~/.zshrc
```
