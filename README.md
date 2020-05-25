#Vim setup
This is my personal vim setup. It's everything but sophisticated, I'm just using this to get my basic vim settings synced across various machines. 

Using vim 8's native package handling instead of pathogen now!

To install this use...
```
    git clone --recursive  git@github.com:supersambo/.vim.git

```

...in home directory.

Add plugins as submodules like so:

```
cd ~/.vim/pack/plugins/start
git submodule add git@github.com:wincent/command-t.git

```

Update all submodules :

```
git submodule update --recursive --remote

```
