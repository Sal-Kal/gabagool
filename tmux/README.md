# TMUX
[TMUX](https://github.com/tmux/tmux/wiki) is a terminal multiplexer that enables multiple virtual terminals within a single session for efficient command-line multitasking.
## Requirements
### 1. TPM
[TPM](https://github.com/tmux-plugins/tpm) is a plugin manager for `tmux`. To use this configuration all you need to do is clone `tpm` from the following command:
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Then paste the `tmux.conf` file to the `~/.config/tmux/` directory.
Then reload `tmux` using the following command:
```
tmux source ~/.config/tmux/tmux.conf
```
