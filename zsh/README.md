# ZSH
[Zsh](https://en.wikipedia.org/wiki/Z_shell) is a powerful and highly customizable Unix shell with advanced scripting features and interactive functionalities.

## Requirements

### 1. Oh My Zsh
[Oh My Zsh](https://ohmyz.sh/) is a framework for managing Zsh configurations and plugins, enhancing the Zsh shell experience with themes, plugins, and productivity tools.
Installation via `curl`:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Installation via `wget`:
```
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

### 2. Powerlevel10k
[Powerlevel10k](https://github.com/romkatv/powerlevel10k) is a highly customizable and fast Zsh theme for prompt configuration, offering extensive visual features and performance optimizations.
Once *Oh My Zsh* has been installed use the following line to install *Powerlevel10k*
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

## Applying the configuration
To apply these configurations, move `p10k.zsh` to your `$HOME` directory as `.p10k.zsh` and `zshrc` as `.zshrc`.
Ensure to remove any unnecessary aliases or functions from the `zshrc` file.
