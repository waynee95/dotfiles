# dotfiles

> my collection of [config files](https://dotfiles.github.io/)

## System Setup

- **distro** ubuntu
- **wm** [stumpwm](https://stumpwm.github.io/)
- **terminal** kitty together with tmux
- **browser** firefox
- **shell** zsh with [common](https://github.com/jackharrisonsherlock/common)
- **editor** vim

## Usage

I use [GNU Stow](https://gnu.org/software/stow/) to manage my dotfiles.

```bash
$ git clone https://github.com/waynee95/dotfiles ~/.dotfiles
$ cd ~/.dotfiles
$ stow bash zsh vim # plus whatever else you'd like
```

It will create a symbolic link for each file in your `$HOME` directory. To
delete it, you can use.

```bash
$ stow -D zsh
```

## Inspired by

- https://github.com/JLErvin/dotfiles/
- https://github.com/alexpearce/dotfiles/
- https://gitlab.com/mefff/dotfiles/
- https://www.reddit.com/r/unixporn/

## License

[MIT](LICENSE)
