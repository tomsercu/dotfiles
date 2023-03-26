My dotfiles.

Getting started on new mac, in no particular order:
* Prereq, install: 
  - iterm2, homebrew. Via installer on their website.
  - <https://ohmyz.sh/#install>
  - `brew install fzf` and `git clone https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin` (from [INSTRUCTIONS](https://github.com/unixorn/fzf-zsh-plugin#oh-my-zsh>)).
  - `brew install tmux`
* Set up ssh keys
* miniconda: https://docs.conda.io/en/main/miniconda.html
* solarized for iterm2: 
    - https://ethanschoonover.com/solarized/ was down, just went to download the raw files from https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized
    - I use solarized dark.
    - iterm > settings > profiles > colors > Color presets (bottom right) > import the Dark file. Then again Color presets > Actually select the imported theme.

```zsh
git clone git@github.com:tomsercu/dotfiles.git
cat links | sh
```

You're welcome, future self!
Kindest regards,
Current self from 2015 - 2023
