if [ -z "$PS1" ] || [ "$PS1" != "bash [\W] $" ]; then
    export PS1="bash [\W] $ "
fi
# habilitar el autocompletado con mayúsculas y minúsculas
bind 'set completion-ignore-case on'

# habilitar el autocompletado con el tabulador
TAB=$(echo -en "\t")
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

# mostrar sugerencias de autocompletado al presionar tab dos veces
bind 'set show-all-if-unmodified on'
