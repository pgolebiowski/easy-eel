source (dirname (realpath (status --current-filename)))/../colors.fish

function _easy_eel_display_prompt_section_git_state
    not git_is_repo; and return

    echo -n "on "

    set -q EASY_EEL_GIT_BRANCH_COLOR; or set -l EASY_EEL_GIT_BRANCH_COLOR purple
    _easy_eel_colored_print $EASY_EEL_GIT_BRANCH_COLOR (git_branch_name)
    echo -n ' '

    set -l state (_easy_eel_print_git_state)
    set -q EASY_EEL_GIT_STATE_COLOR; or set -l EASY_EEL_GIT_STATE_COLOR blue
    _easy_eel_colored_print $EASY_EEL_GIT_STATE_COLOR "[$state]"
end

function _easy_eel_print_git_state
    set -q EASY_EEL_GIT_DIRTYSTATE; or set -l EASY_EEL_GIT_DIRTYSTATE '!'
    set -q EASY_EEL_GIT_UNTRACKED; or set -l EASY_EEL_GIT_UNTRACKED '☡'
    set -q EASY_EEL_GIT_STASH; or set -l EASY_EEL_GIT_STASH '↩'
    set -q EASY_EEL_GIT_CLEAN; or set -l EASY_EEL_GIT_CLEAN '✓'

    set -l result

    if git_is_touched
        set result $EASY_EEL_GIT_DIRTYSTATE
    else
        set result $EASY_EEL_GIT_CLEAN
    end

    if git_untracked | read -l >/dev/null 2>&1
        set result "$result$EASY_EEL_GIT_UNTRACKED"
    end

    if git_is_stashed
        set result "$result$EASY_EEL_GIT_STASH"
    end

    set git_ahead_behind_diverged (git_ahead)

    set result "$result$git_ahead_behind_diverged"
    echo $result
end
