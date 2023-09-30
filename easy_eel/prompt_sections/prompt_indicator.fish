source (dirname (realpath (status --current-filename)))/../colors.fish

function _easy_eel_display_prompt_indicator -a previous_command_status
    set -q EASY_EEL_PROMPT_INDICATOR_SYMBOL; or set -l EASY_EEL_PROMPT_INDICATOR_SYMBOL "↪ "
    set -l color (_easy_eel_determine_prompt_color $previous_command_status)
    _easy_eel_colored_print $color $EASY_EEL_PROMPT_INDICATOR_SYMBOL
end

function _easy_eel_determine_prompt_color -a previous_command_status
    if test $previous_command_status -ne 0
        set -q EASY_EEL_COLOR_ERROR; or set -l EASY_EEL_COLOR_ERROR red
        echo $EASY_EEL_COLOR_ERROR
    else
        set -q EASY_EEL_COLOR_PROMPT_NORMAL; or set -l EASY_EEL_COLOR_PROMPT_NORMAL normal
        echo $EASY_EEL_COLOR_PROMPT_NORMAL
    end
end
