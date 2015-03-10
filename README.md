# My Vim configuration

This repository contains my Vim configuration, used on both Lubuntu and
Windows.


## Setup

### Linux

```bash
ln -s ~/Documents/my_vim_config ~/.vim
ln -s ~/Documents/my_vim_config/vimrc ~/.vimrc
```


### Windows

```
cd C:\Users\my_name
mklink /D vimfiles C:\Users\my_name\Documents\config\my_vim_config
mklink _vimrc C:\Users\my_name\Documents\config\my_vim_config\vimrc
```


## Plugins

Each of these are saved as submodules in the `bundle` folder.

All plugins are loaded with
[Pathogen](https://github.com/tpope/vim-pathogen).

- [Airline](https://github.com/bling/vim-airline)
- [Easymotion](https://github.com/Lokaltog/vim-easymotion)
- [EditorConfig](https://github.com/editorconfig/editorconfig-vim)
- [Fugitive](https://github.com/tpope/vim-fugitive)
- [NERD Commenter](https://github.com/scrooloose/nerdcommenter)
- [Repeat](https://github.com/tpope/vim-repeat)
- [speeddating](https://github.com/tpope/vim-speeddating)
- [Surround](https://github.com/tpope/vim-surround)
- [Unite](https://github.com/Shougo/unite.vim)


### Language support

- [CoffeeScript](https://github.com/kchmck/vim-coffee-script) and
  [Literate CoffeeScript](https://github.com/mintplant/vim-literate-coffeescript)
- [Jade](https://github.com/digitaltoad/vim-jade)
- [Markdown](https://github.com/tpope/vim-markdown)
- [Stylus](https://github.com/wavded/vim-stylus)


### Colour scheme

- [Solarized](https://github.com/altercation/solarized)


### Updating plugins

Update all submodules with:

```bash
git submodule foreach git pull origin master
```

Then `git add bundle/*`, `git commit` and `git push`.
GitHub for Windows does not currently like doing this.

**On other machines** update submodules after pulling changes:

```bash
git submodule update
```
