[![Maintenance](https://img.shields.io/maintenance/yes/2022?style=for-the-badge)](https://github.com/CallMeEchoCodes/dotfiles/commits)
[![contributions](https://img.shields.io/badge/contribution-welcome-brightgreen&?style=for-the-badge)](https://github.com/CallMeEchoCodes/dotfiles/pulls)

# Heyo!
Welcome to my dotfiles! If you don't know what dotfiles are.. well first how did you get here, and second they are basicly what linux users call configuration files.
Before i start rambling lets get straight into the install guide

# Screenshots

![IMG1](https://i.imgur.com/YvV29fp.png)
![IMG2](https://i.imgur.com/9qzNbET.png)

# Install
## Dependencies
### Required dependencies

| Name                                                                   | Description                                                                                   | Where/why is it needed?                |
| ---------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | -------------------------------------- |
| [i3 Gaps Rounded](https://github.com/FinnHering/i3)                    | A fork of i3wm tiling window manager with more features, including gaps and rounded corners   | Window Manager                         |
| [Inter Nerd Font](https://aur.archlinux.org/packages/nerd-fonts-inter) | Inter Font, patched with the Nerd Fonts Patcher                                               | System Font                            |
| [polybar](https://github.com/polybar/polybar)                          | A fast and easy-to-use tool for creating status bars                                          | Top Bar                                |
| [rofi](https://github.com/davatorium/rofi)                             | A window switcher, Application launcher and dmenu replacement.                                | App launcher, switcher, and power menu |
| [Dunst](https://dunst-project.org)                                     | A lightweight replacement for the notification daemons provided by most desktop environments. | Notification Daemon                    |

### Optional dependencies

| Name                                                   | Description                                                                                                                                  | Where/why is it needed? |
| ------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------- |
| [Kitty](https://sw.kovidgoyal.net/kitty)               | The fast, feature-rich, GPU based terminal emulator                                                                                          | Terminal Emulator       |
| [Neovim](https://neovim.io)                            | hyperextensible Vim-based text editor                                                                                                        | Text Editor             |
| [ZSH](https://zsh.org) + [Oh My ZSH](https://ohmyz.sh) | `ZSH`: A shell designed for interactive use `OMZ`: A delightful, open source, community-driven framework for managing your Zsh configuration | Shell                   |

Once you have atleast all of the [required dependencies](#required-dependencies) installed you may proceed.

## Installation

1. Clone this repo into `~/.dotfiles` with submodules
`git clone --recurse-submodules --remote-submodules https://github.com/CallMeEchoCodes/dotfiles ~/.dotfiles`
2. Delete/move any already existing configurations of the dependencies you installed
3. `cd` into `~/.dotfiles`
`cd ~/.dotfiles`
4. Run `./install`
5. Add `exec i3` to your `.xinitrc`
6. Type `startx` to open i3wm!

# Mappings
`Super + Shift + s`  Take screenshot and copy to clipboard (will also save to ~/Screenshots) <br />
`Super + 0-9` Switch workspaces <br />
`Super + Shift + 0-9` Move focused window to another workspace <br />
`Super + Enter` Open terminal (will open kitty by default) <br />
`Super + h` Split horizontaly <br />
`Super + v` Split verticaly <br />
