# zsh-nvm-auto-switch

Automatically switch versions of node by looking for a .nvmrc file in the path tree

## Installation

* [Oh My Zsh](#oh-my-zsh)
* [Manual](#manual-git-clone)

### Oh My Zsh

1. Clone this repository into `$ZSH_CUSTOM/plugins` (by default `~/.oh-my-zsh/custom/plugins`)

    ```sh
    git clone https://github.com/aspirewit/zsh-nvm-auto-switch ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-nvm-auto-switch
    ```

2. Add the plugin to the list of plugins for Oh My Zsh to load (inside `~/.zshrc`):

    ```sh
    plugins=(zsh-nvm-auto-switch)
    ```

3. Start a new terminal session.

### Manual (Git Clone)

1. Clone this repository somewhere on your machine. This guide will assume `~/.zsh/zsh-nvm-auto-switch`.

    ```sh
    git clone https://github.com/aspirewit/zsh-nvm-auto-switch ~/.zsh/zsh-nvm-auto-switch
    ```

2. Add the following to your `.zshrc`:

    ```sh
    source ~/.zsh/zsh-nvm-auto-switch/zsh-nvm-auto-switch.zsh
    ```

3. Start a new terminal session.

## Acknowledgments

* [nvm-auto](https://github.com/dijitalmunky/nvm-auto)
* [nvm-auto-switch](https://github.com/lalitkapoor/nvm-auto-switch)
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
