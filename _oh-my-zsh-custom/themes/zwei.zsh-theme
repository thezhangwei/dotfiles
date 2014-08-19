ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function prompt_char {
  echo "%{$fg_bold[white]%}%(!.#.⚡)%{$reset_color%}" 
}

PROMPT='\
%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%}: %{$fg[blue]%}%~%{$reset_color%}$(git_prompt_info) \
%_$(prompt_char) '

RPROMPT='%{$fg[green]%}[%*]%{$reset_color%}'
