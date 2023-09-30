source (dirname (realpath (status --current-filename)))/../colors.fish

function _easy_eel_display_prompt_section_host
    echo -n "at "
    _easy_eel_colored_print (_easy_eel_determine_host_color) (_easy_eel_host)
end

function _easy_eel_determine_host_color
    set -q EASY_EEL_HOST_DEFAULT_COLOR; or set -l EASY_EEL_HOST_DEFAULT_COLOR yellow
    set -q EASY_EEL_HOST_SSH_COLOR; or set -l EASY_EEL_HOST_SSH_COLOR "--bold red"

    if test $SSH_TTY
        echo $EASY_EEL_HOST_SSH_COLOR
    else
        echo $EASY_EEL_HOST_DEFAULT_COLOR
    end
end

function _easy_eel_host
    if functions -q easy_eel_host_override
        easy_eel_host_override
        return
    end

    set -l full_hostname
    if set -q HOSTNAME
        set full_hostname $HOSTNAME
    else
        set full_hostname (hostname)
    end

    # If it's an IP address, print it entirely
    if string match -qr '^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$' -- $full_hostname
        echo $full_hostname
        return
    end

    echo (string split '.' -- $full_hostname)[1]
end
