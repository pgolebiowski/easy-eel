source (dirname (realpath (status --current-filename)))/../colors.fish

function _easy_eel_display_prompt_section_current_directory
    set -q EASY_EEL_CURRENT_DIRECTORY_COLOR; or set -l EASY_EEL_CURRENT_DIRECTORY_COLOR green

    echo -n "in "
    _easy_eel_colored_print $EASY_EEL_CURRENT_DIRECTORY_COLOR (_easy_eel_current_directory)
end

function _easy_eel_current_directory
    if functions -q easy_eel_current_directory_override
        easy_eel_current_directory_override
        return
    end

    prompt_pwd
end
