# dotfiles

> my collection of [config files](https://dotfiles.github.io/)

## System Setup

* **distro** ubuntu
* **wm** [stumpwm](https://stumpwm.github.io/)
* **terminal** termite and [tilix](https://github.com/gnunn1/tilix/)
* **browser** firefox
* **shell** fish with [pure.fish](https://github.com/brandonweiss/pure.fish)
* **editor** vim
* **font** Courier Code

## Usage

I use [GNU Stow](https://gnu.org/software/stow/) to manage my dotfiles.

```bash
$ git clone https://github.com/waynee95/dotfiles ~/.dotfiles
$ cd ~/.dotfiles
$ stow bash fish vim # plus whatever else you'd like
```

It will create a symbolic link for each file in your `$HOME` directory. To
delete it, you can use.

```bash
$ stow -D fish 
```

## Vim

For vim I use the [monotone](https://github.com/Lokaltog/vim-monotone)
colorscheme. At the moment I am only using a few plugins. They are managed by  
[pathogen](https://github.com/tpope/vim-pathogen) and a simple bash script.

```bash
$ cd ~/.dotfiles/vim
$ ./vim-setup-plugins.sh
```

## Inspired by

* https://github.com/JLErvin/dotfiles/
* https://github.com/alexpearce/dotfiles/
* https://gitlab.com/mefff/dotfiles/
* https://www.reddit.com/r/unixporn/

## License

[MIT](LICENSE)
