# 🌊 Easy Eel

Dive into a minimalistic command line experience with Easy Eel for the Fish shell. With comprehensive customization features, you can tailor the theme to your liking.

<img src="https://github.com/pgolebiowski/theme-easy-eel/assets/7394091/ff5920f6-721a-4d49-823c-b2dfbda530a4" alt="Demonstration of the Easy Eel theme in action: showcasing user, host, directory, Git branch, and repository states. Also illustrates the outcome-based color change of the prompt indicator." width="75%">

## 🎣 Getting started

With [Fish Shell](https://fishshell.com) and [Oh My Fish](https://github.com/oh-my-fish/oh-my-fish) installed, simply run:

```sh
omf install https://github.com/pgolebiowski/theme-easy-eel
```

## 🌟 Features

- 🐠 **Clean Interface.** A straightforward and uncluttered prompt.
- 🛠️ **Granular Customization.** Tailor the theme to your needs, from aesthetics to behavior.

## 🦑 Customization

Easy Eel provides two distinct avenues for personalization:

1. **Environment Variables.** For refining the theme's appearance, make use of specific variables. Adjust elements like colors, symbols, or even toggle on/off certain prompt parts.
   
<img src="https://github.com/pgolebiowski/theme-easy-eel/assets/7394091/633f9200-6398-4f5a-9a1c-12723a2ea602" alt="Demonstrating the use of environment variables to modify the prompt appearance. In this example, the prompt indicator has been changed to '🌊 ', the user color is set to blue, and the host display has been hidden." width="75%">

2. **Override Functions.** When you wish to modify the theme's behavior or replace entire prompt sections, these functions come into play. When defined, they will override Easy Eel's defaults for the associated prompt segment.

<img src="https://github.com/pgolebiowski/theme-easy-eel/assets/7394091/e19ef564-62fa-4f85-88b6-32a9ed306c68" alt="Showcasing the use of an override function to replace the default user name. Here, the `easy_eel_user_override` function is defined to change the user name to 'Dockside Dave' in the prompt." width="75%">

## 📚 Documentation

### Title

- **Purpose:** Terminal title. Shows the directory by default.
- **Override:** `easy_eel_override_title`

### Prompt Sections

#### User 

- **Purpose**: Display the current user.
- **Color**: `EASY_EEL_USER_COLOR` (default: `brred`)
- **Override**: `easy_eel_user_override`
- **Toggle**: `EASY_EEL_HIDE_USER`

#### Host

- **Purpose**: Show hostname. Different style for SSH sessions.
- **Default Color**: `EASY_EEL_HOST_DEFAULT_COLOR` (default: `yellow`)
- **SSH Color**: `EASY_EEL_HOST_SSH_COLOR` (default: `--bold red`)
- **Override**: `easy_eel_host_override`
- **Toggle**: `EASY_EEL_HIDE_HOST`

#### Current Directory

- **Purpose**: Reveal current directory.
- **Color**: `EASY_EEL_CURRENT_DIRECTORY_COLOR` (default: `green`)
- **Override**: `easy_eel_current_directory_override`
- **Toggle**: `EASY_EEL_HIDE_CURRENT_DIRECTORY`

#### Git 

- **Purpose**: Displays the Git branch name and repository state.
- **Variables:**
  - `EASY_EEL_GIT_BRANCH_COLOR` (default: `purple`)
  - `EASY_EEL_GIT_STATE_COLOR` (default: `blue`)
  - `EASY_EEL_GIT_DIRTYSTATE` (default: `!`)
  - `EASY_EEL_GIT_UNTRACKED` (default: `☡`)
  - `EASY_EEL_GIT_STASH` (default: `↩`)
  - `EASY_EEL_GIT_CLEAN` (default: `✓`)
- **Toggle**: `EASY_EEL_HIDE_GIT_STATE`

#### Prompt Indicator 

- **Purpose**: Indicates where the user can start typing commands. Color changes based on the outcome of the previous command.
- **Variables:**
  - `EASY_EEL_PROMPT_INDICATOR_SYMBOL` (default: `↪ `)
  - `EASY_EEL_COLOR_PROMPT_NORMAL` (default: `normal`)
  - `EASY_EEL_COLOR_ERROR` (default: `red`)

## 🐳 Support

Having trouble with Easy Eel or have a feature suggestion? Simply head to the [**Issues** tab](https://github.com/pgolebiowski/theme-easy-eel/issues) to share your feedback. Every comment helps make the theme better!

## 🤝 Contributions

You're welcome to contribute! Fork the repository, implement and test your changes, and submit a pull request detailing your updates.

## 💡 Inspiration

- https://github.com/mathiasbynens/dotfiles
- https://github.com/necolas/dotfiles
- https://github.com/lfiolhais/theme-simple-ass-prompt

## ⚖️ License

The theme code is yours to customize, utilize, and spread ([the MIT License](/LICENSE)). Kindly consider a mention or link back to this project whenever you share it. Enjoy!
