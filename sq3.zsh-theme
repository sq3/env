# sq3 ZSH theme is a modified version of 
# https://github.com/blinks zsh theme

CRUNCH_GIT_CLEAN_COLOR="%{$fg[green]%}"
CRUNCH_GIT_DIRTY_COLOR="%{$fg[red]%}"

ZSH_THEME_GIT_PROMPT_CLEAN=" $CRUNCH_GIT_CLEAN_COLOR✓"
ZSH_THEME_GIT_PROMPT_DIRTY=" $CRUNCH_GIT_DIRTY_COLOR✗"

ZSH_THEME_GIT_PROMPT_PREFIX=" [%{%B%F{blue}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%k%b%K{${bkg}}%B%F{green}%}]"

PROMPT='%{%f%k%b%}
%{%K{${bkg}}%B%F{green}%}%n%{%B%F{blue}%}@%{%B%F{cyan}%}%m%{%B%F{green}%} %{%b%F{yellow}%K{${bkg}}%}%~%{%B%F{green}%}$(git_prompt_info)%E%{%f%k%b%}
%{%K{${bkg}}%}$%{%f%k%b%} '

