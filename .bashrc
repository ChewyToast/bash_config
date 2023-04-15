source ~/.bash_git

# Función para mostrar el estado de Git
function git_branch {
    git branch --no-color 2>/dev/null | awk '{if ($1=="*") print $2}'
}

# Configuración del prompt
if [ -z "$PS1" ] || [ "$PS1" != "bash [\W]\[\033[0;32m\]$(__git_ps1 " (%s)")\[\033[0m\] $" ]; then
    export PS1='bash [\W] [\[\033[0;36m\]$(__git_ps1 "%s")\[\033[0m\]] $ '
fi

if ! echo $PATH | grep -q ~/bin ; then
  export PATH=$PATH:~/bin
fi

# habilitar el autocompletado con mayúsculas y minúsculas
bind 'set completion-ignore-case on'

# habilitar el autocompletado con el tabulador
TAB=$(echo -en "\t")
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

# mostrar sugerencias de autocompletado al presionar tab dos veces
bind 'set show-all-if-unmodified on'

export HISTCONTROL=ignoreboth:erasedups

alias t="tree -L 1"
alias ta="tree -a -L 1"
