set -l color00 '#241b30'
set -l color01 '#e60a70'
set -l color02 '#00986c'
set -l color03 '#adad3e'
set -l color04 '#6e29ad'
set -l color05 '#b300ad'
set -l color06 '#00b0b1'
set -l color07 '#b9b1bc'
set -l color08 '#7f7094'
set -l color09 '#e60a70'
set -l color0A '#0ae4a4'
set -l color0B '#f9f972'
set -l color0C '#aa54f9'
set -l color0D '#ff00f6'
set -l color0E '#00fbfd'
set -l color0F '#f2f2e3'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
