## about

In the interest of dressing up terminal based applications like Git and Vim in matching colors, but also to make life easier when it comes to setting up a new workstation, it helps having the color scheme defined in one place: your __terminal emulator preference panel__.

With `git-config` the [`color.ui`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-colorui) default is `auto`. In Vim it's possible to use [numeric pointers](https://jeffkreeftmeijer.com/vim-16-color/#terminal-colors-and-ansi-escape-sequences) for each of the base 16 colors instead of [harcoding their values](https://github.com/chriskempson/base16-vim/blob/master/colors/base16-eighties.vim#L17) in script. And Vim `:highlight` allows for experimenting inline before investing,

```vim
" No color, no background, no nothing
:hi Normal ctermfg=NONE ctermbg=NONE cterm=NONE
:hi link javaScript Normal " Copy settings over to the `javaScript` highlight group
" Get help not mad
:help hi
```

Or,

```vim
" Keep it DRY and define a blue (4) style for assigning to multiple groups
let s:blue = "ctermfg=4 ctermbg=NONE cterm=NONE"
:hi Normal s:blue " Expect linked `javaScript` to reflect changes
```

Then it's a case of figuring out respective [highlight groups](https://jordanelver.co.uk/blog/2015/05/27/working-with-vim-colorschemes/#showing-highlight-groups) and how they fit together with each language syntax. But font styling is also possible, using __bold__ or <ins>underlined</ins> text for example.

![Vim color preview](https://i.imgur.com/Zfu6Z53.png)

## setup, usage

If [running Vim 8](https://shapeshed.com/vim-packages/) and later, `git clone` within your `~/.vim/pack/<foo>/start` folder along with the rest of your plugins to install. Then in `.vimrc` potentially,

```vim
" disable coloring altogether if chosen scheme unavailable
try
  colorscheme robert
catch
  set t_Co=0
endtry
```

For portability I also keep a copy of my [Terminal.app settings](https://gist.github.com/thewhodidthis/52f30f8221e64ff92807d911f0d1fd3a) version checked as well.
