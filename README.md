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
mklink /D vimfiles C:\Users\my_name\Documents\GitHub\my_vim_config
mklink _vimrc C:\Users\my_name\Documents\GitHub\my_vim_config\vimrc
```


## Plugins

Each of these are saved as submodules in the `bundle` folder.

All plugins are loaded with
[Pathogen](https://github.com/tpope/vim-pathogen).

- [Easymotion](https://github.com/Lokaltog/vim-easymotion)
- [EditorConfig](https://github.com/editorconfig/editorconfig-vim)
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


### Old plugins

Used [Airline](https://github.com/bling/vim-airline) for a while, but
could never get the patched fonts to work.
Removed when I realised I did not check it enough to justify having it.
`Ctrl + G` works fine.

Removed [Fugitive](https://github.com/tpope/vim-fugitive) because it
seemed to have issues on Windows.
I also use aliases to the normal `git` commands now anyway.

Replaced [Ctrlp](https://github.com/kien/ctrlp.vim) with Unite.


## Managing plugins

### Update plugins

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


### Remove plugin

From: [How do I remove a Git submodule?](http://stackoverflow.com/questions/1260748/how-do-i-remove-a-git-submodule)

```bash
git submodule deinit bundle/my_submodule
git rm bundle/my_submodule
git commit -m "Remove my_submodule"
rm -rf .git/modules/bundle/my_submodule
```

## Notes

- http://vim.wikia.com/wiki/Easier_buffer_switching
