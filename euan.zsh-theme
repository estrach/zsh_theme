# Thanks to lukerandal, upon whose theme this is based

local return_code="%(?..%{$fg_bold[red]%}%? ↵%{$reset_color%})"

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  GIT_STATUS=$(git_prompt_status)
  [[ -n $GIT_STATUS ]] && GIT_STATUS=" $GIT_STATUS"
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$GIT_STATUS$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

function session_name(){
  if [ -n "$STY" ]; then
    echo " $(echo $STY | sed 's/[0-9]*\.//')|"
  elif [ -n "$TMUX" ]; then
    echo "$(tmux display-message -p '#S')|"
  fi
}

function get_time(){
  echo "%D{%K:%M}"
}

function additional_info() {
  echo "%{$fg_bold[magenta]%}[$(session_name)$(get_time)]%{$reset_color%}"
}

PROMPT='%{$fg_bold[green]%}%n@%m%{$reset_color%} %{$fg_bold[blue]%}%2~%{$reset_color%} $(additional_info) $(git_prompt_info)%{$reset_color%}%B»%b '
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=") %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%%"
ZSH_THEME_GIT_PROMPT_ADDED="+"
ZSH_THEME_GIT_PROMPT_MODIFIED="*"
ZSH_THEME_GIT_PROMPT_RENAMED="~"
ZSH_THEME_GIT_PROMPT_DELETED="!"
ZSH_THEME_GIT_PROMPT_UNMERGED="?"

