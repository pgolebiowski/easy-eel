source (dirname (realpath (status --current-filename)))/../colors.fish

function _easy_eel_display_prompt_section_user
    set -q EASY_EEL_USER_COLOR; or set -l EASY_EEL_USER_COLOR brred
    _easy_eel_colored_print $EASY_EEL_USER_COLOR (_easy_eel_user)
end

function _easy_eel_user
    if functions -q easy_eel_user_override
        easy_eel_user_override
        return
    end

    if set -q USER
        echo $USER
    else
        whoami
    end
end
