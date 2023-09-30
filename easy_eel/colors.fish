function _easy_eel_colored_print -a color text
    set_color $color
    echo -n $text
    set_color normal
end

