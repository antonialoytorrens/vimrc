![VIM](https://dnp4pehkvoo6n.cloudfront.net/43c5af597bd5c1a64eb1829f011c208f/as/Ultimate%20Vimrc.svg)

# The Ultimate vimrc

Over the last 10 years, I have used and tweaked Vim. This configuration is the ultimate vimrc (or at least my version of it).

## How to install the Awesome version?
The awesome version includes a lot of great plugins, configurations and color schemes that make Vim a lot better. To install it simply do following from your terminal:

	git clone --depth=1 https://github.com/antonialoytorrens/vimrc.git /opt/amix-vimrc-tweaks
	sh /opt/amix-vimrc-tweaks/install_awesome_vimrc.sh
	
It is installed system-wide and available for all users.

## Fonts

I recommend using [IBM Plex Mono font](https://github.com/IBM/plex) (it's an open-source and awesome font that can make your code look beautiful). The Awesome vimrc is already setup to try to use it.

Some other fonts that Awesome will try to use:

* [Hack](http://sourcefoundry.org/hack/)
* [Source Code Pro](https://adobe-fonts.github.io/source-code-pro/)


## How to install on Windows?

Use [gitforwindows](http://gitforwindows.org/) to checkout the repository and run the installation instructions above. No special instructions needed ;-)


## How to install on Linux

If you have vim aliased as `vi` instead of `vim`, make sure to either alias it: `alias vi=vim`. Otherwise, `apt-get install vim`


## How to update to latest version?

Just do a git rebase!


    cd /opt/amix-vimrc-tweaks
    git reset --hard
    git clean -d --force
    git pull --rebase
    python update_plugins.py  # use python3 if python is unavailable

## Some screenshots

Colors when editing a Python file:

![Screenshot 1](https://dnp4pehkvoo6n.cloudfront.net/07583008e4da885801657e8781777844/as/Python%20editing.png)

Distraction free mode using [goyo.vim](https://github.com/junegunn/goyo.vim) and [vim-zenroom2](https://github.com/amix/vim-zenroom2):
![Screenshot 4](https://dnp4pehkvoo6n.cloudfront.net/f0dcc4c9739148c56cbf8285a910ac41/as/Zen%20mode.png)


## Included Plugins

I recommend reading the docs of these plugins to understand them better. Each plugin provides a much better Vim experience!

* [ack.vim](https://github.com/mileszs/ack.vim): Vim plugin for `the_silver_searcher` (ag) or ack -- a wicked fast grep
* [bufexplorer.zip](https://github.com/vim-scripts/bufexplorer.zip): Quickly and easily switch between buffers. This plugin can be opened with `<leader+o>`
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim): Fuzzy file, buffer, mru and tag finder. It's mapped to `<Ctrl+F>`
* [goyo.vim](https://github.com/junegunn/goyo.vim) and [vim-zenroom2](https://github.com/amix/vim-zenroom2): 
* [lightline.vim](https://github.com/itchyny/lightline.vim): A light and configurable statusline/tabline for Vim
* [open_file_under_cursor.vim](https://github.com/amix/open_file_under_cursor.vim): Open file under cursor when pressing `gf`
* [pathogen.vim](https://github.com/tpope/vim-pathogen): Manage your vim runtimepath 
* [snipmate.vim](https://github.com/garbas/vim-snipmate): snipmate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim
* [ale](https://github.com/dense-analysis/ale): Syntax and lint checking for vim (ALE requires NeoVim >= 0.2.0 or Vim 8 with +timers +job +channel)
* [vim-commentary](https://github.com/tpope/vim-commentary): Comment stuff out.  Use `gcc` to comment out a line (takes a count), `gc` to comment out the target of a motion. `gcu` uncomments a set of adjacent commented lines
* [vim-expand-region](https://github.com/terryma/vim-expand-region): Allows you to visually select increasingly larger regions of text using the same key combination
* [vim-fugitive](https://github.com/tpope/vim-fugitive): A Git wrapper so awesome, it should be illegal
* [vim-indent-object](https://github.com/michaeljsmith/vim-indent-object): Defines a new text object representing lines of code at the same indent level. Useful for python/vim scripts
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors): Sublime Text style multiple selections for Vim, CTRL+N is remapped to CTRL+S (due to YankRing)
* [vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack): Maintains a history of previous yanks, changes and deletes
* [vim-zenroom2](https://github.com/amix/vim-zenroom2) Remove all clutter and focus only on the essential. Similar to iA Writer or Write Room
* [gist-vim](https://github.com/mattn/gist-vim) Easily create gists from Vim using the `:Gist` command
* [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) Is a plugin for visually displaying indent levels in Vim
* [editorconfig-vim](https://github.com/editorconfig/editorconfig-vim) EditorConfig helps maintain consistent coding styles for multiple developers working on the same project across various editors and IDEs
* [copilot.vim](https://github.com/github/copilot.vim) Plugin for GitHub Copilot (AI autocompletion FTW 😅)


## Included color schemes

Type `:colorscheme <Tab>` to try out color schemes on the fly,
or add the command to `~/.vim_runtime/my_configs.vim` (see [below](#how-to-include-your-own-stuff)),
for example `colorscheme pyte`.

* [peaksea](https://github.com/vim-scripts/peaksea): The default
* [dracula](https://github.com/dracula/vim)
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
* [vim-irblack](https://github.com/wgibbs/vim-irblack)
* [mayansmoke](https://github.com/vim-scripts/mayansmoke)
* [vim-pyte](https://github.com/therubymug/vim-pyte)


## Included modes

* [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
* [vim-less](https://github.com/groenewege/vim-less)
* [vim-bundle-mako](https://github.com/sophacles/vim-bundle-mako)
* [vim-markdown](https://github.com/plasticboy/vim-markdown)
* [nginx.vim](https://github.com/vim-scripts/nginx.vim): Highlights configuration files for nginx
* [rust.vim](https://github.com/rust-lang/rust.vim)
* [vim-ruby](https://github.com/vim-ruby/vim-ruby)
* [typescript-vim](https://github.com/leafgarland/typescript-vim)
* [vim-javascript](https://github.com/pangloss/vim-javascript)
* [vim-python-pep8-indent](https://github.com/Vimjas/vim-python-pep8-indent)


## How to include your own stuff?

After you have installed the setup,
create an empty `/opt/amix-vimrc-tweaks/my_configs.vim` file for further customization.
This file's syntax matches `vimrc` syntax,
and add `vimrc` lines like `set number` as needed.

For instance, my `my_configs.vim` looks like this:

	/opt/amix-vimrc-tweaks > cat my_configs.vim
	map <leader>ct :cd ~/Desktop/Todoist/todoist<cr>
	map <leader>cw :cd ~/Desktop/Wedoist/wedoist<cr> 

You can also install your plugins, for instance, via pathogen you can install [vim-rails](https://github.com/tpope/vim-rails):

	cd /opt/amix-vimrc-tweaks
	git clone git://github.com/tpope/vim-rails.git my_plugins/vim-rails

You can also install plugins without any plugin manager (vim 8+ required):

* Create pack plugin directory:\
`mkdir -p /opt/amix-vimrc-tweaks/pack/plugins/start`
* Clone the plugin that you want in that directory, for example:\
`git clone --depth=1 git://github.com/maxmellon/vim-jsx-pretty  /opt/amix-vimrc-tweaks/pack/plugins/start/vim-jsx-pretty`


## Key Mappings

The [leader](http://learnvimscriptthehardway.stevelosh.com/chapters/06.html#leader) is `,`, so whenever you see `<leader>` it means `,`.


### Normal mode mappings

Fast saving of a buffer (`<leader>w`):

```vim
nmap <leader>w :w!<cr>
```

Map `<Space>` to `/` (search) and `<Ctrl>+<Space>` to `?` (backwards search):
```vim	
map <space> /
map <C-space> ?
```
Disable highlights when you press `<leader><cr>`:

```vim
map <silent> <leader><cr> :noh<cr>
```
Smart way to move between windows (`<ctrl>j` etc.):
```vim	
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
```
Closing of the current buffer(s) (`<leader>bd` and (`<leader>ba`)):
```vim	
" Close current buffer
map <leader>bd :Bclose<cr>

" Close all buffers
map <leader>ba :1,1000 bd!<cr>
```	
Useful mappings for managing tabs:
```vim	
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=escape(expand("%:p:h"), " ")<cr>/
```	
Switch [CWD](http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file) to the directory of the open buffer:
```vim	
map <leader>cd :cd %:p:h<cr>:pwd<cr>
```	
Open `ack.vim` for fast search:
```vim	
map <leader>g :Ack 
```
Quickly open a buffer for scripbble:
```vim	
map <leader>q :e ~/buffer<cr>
```
Toggle paste mode on and off:
```vim	
map <leader>pp :setlocal paste!<cr>
```

### Visual mode mappings

Visual mode pressing `*` or `#` searches for the current selection:
```vim
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
```
When you press gv you `Ack.vim` after the selected text:
```vim
vnoremap <silent> gv :call VisualSelection('gv', '')<CR>
```
When you press `<leader>r` you can search and replace the selected text:
```vim
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>
```
Surround the visual selection in parenthesis/brackets/etc.:
```vim
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a`<esc>`<i`<esc>
```

### Insert mode mappings

Quickly insert parenthesis/brackets/etc.:
```vim
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i
```
Insert the current date and time (useful for timestamps):
```vim
iab xdate <C-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
```

### Command line mappings

$q is super useful when browsing on the command line. It deletes everything until the last slash:
```vim
cno $q <C-\>eDeleteTillSlash()<cr>
```
Bash like keys for the command line:
```vim
cnoremap <C-A>		<Home>
cnoremap <C-E>		<End>
cnoremap <C-K>		<C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>
```

Write the file as sudo (works only on Unix). Super useful when you open a file and you don't have permissions to save your changes. [Vim tip](http://vim.wikia.com/wiki/Su-write):

    :W 

### Plugin related mappings

Open [bufexplorer](https://github.com/vim-scripts/bufexplorer.zip) to see and manage the current buffers (`<leader>o`):
```vim
map <leader>o :BufExplorer<cr>
```
Open [ctrlp.vim](https://github.com/kien/ctrlp.vim) plugin to quickly find a file or a buffer (`<leader>j` or `<ctrl>f`):
```vim
" Quickly find and open a file in the CWD
let g:ctrlp_map = '<C-f>'

" Quickly find and open a recently opened file
map <leader>f :MRU<CR>

" Quickly find and open a buffer
map <leader>b :CtrlPBuffer<cr>
```
[goyo.vim](https://github.com/junegunn/goyo.vim) and [vim-zenroom2](https://github.com/amix/vim-zenroom2) lets you only focus on one thing at a time. It removes all the distractions and centers the content. It has a special look when editing Markdown, reStructuredText and textfiles. It only has one mapping. (`<leader>z`)
```vim
map <leader>z :Goyo<cr>
```
[vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) mappings to manage multiple cursors at once:
```vim
let g:multi_cursor_start_word_key      = '<C-s>'
let g:multi_cursor_select_all_word_key = '<A-s>'
let g:multi_cursor_start_key           = 'g<C-s>'
let g:multi_cursor_select_all_key      = 'g<A-s>'
let g:multi_cursor_next_key            = '<C-s>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
```
[vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack) mappings to manage the kill-ring (clipboard):
```vim
nmap <C-p> <Plug>yankstack_substitute_older_paste
nmap <C-n> <Plug>yankstack_substitute_newer_paste
```
[ctrl-p](https://github.com/ctrlpvim/ctrlp.vim) mappings to easily find and open a file, buffer, etc.:
```vim
let g:ctrlp_map = '<C-f>'
map <leader>j :CtrlP<cr>
map <C-b> :CtrlPBuffer<cr>
```

[vim-snipmate](https://github.com/garbas/vim-snipmate) mappings to autocomplete via snippets:
```vim
ino <C-j> <C-r>=snipMate#TriggerSnippet()<cr>
snor <C-j> <esc>i<right><C-r>=snipMate#TriggerSnippet()<cr>
```
[vim-surround](https://github.com/tpope/vim-surround) mappings to easily surround a string with `_()` gettext annotation:
```vim
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>
```
[ale](https://github.com/dense-analysis/ale) to easily go to the next Ale syntax/lint error:
```vim
nmap <silent> <leader>a <Plug>(ale_next_wrap)
```
[vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) the default mapping to toggle the plugin is (`<leader>ig`)

    You can also use the following commands inside Vim:
    :IndentGuidesEnable
    :IndentGuidesDisable
    :IndentGuidesToggle

[vim-fugitive](https://github.com/tpope/vim-fugitive) to copy the link to the line of a Git repository to the clipboard:
```vim
nnoremap <leader>v :.GBrowse!<CR>
xnoremap <leader>v :'<'>GBrowse!<CR>
```
### Spell checking
Pressing `<leader>ss` will toggle spell checking:
```vim
map <leader>ss :setlocal spell!<cr>
```
Shortcuts using `<leader>` instead of special characters:
```vim
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
```
### Running Code
To run code directly from vim, press `F5`. The currently open code will execute without you having to type anything.

Can be used to execute code written in C, C++, Java, Python, Go, Octave, Bash scripts and HTML. To edit how you want your code to be executed, make changes in the file `/opt/amix-vimrc-tweaks/vimrcs/extended.vim`

### Cope
Query `:help cope` if you are unsure what cope is. It's super useful!

When you search with `Ack.vim`, display your results in cope by doing:
`<leader>cc`

To go to the next search result do:
`<leader>n`

To go to the previous search results do:
`<leader>p`

Cope mappings:
```vim
map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
map <leader>p :cp<cr>
```

## How to uninstall
Just do following:
* Remove `/opt/amix-vimrc-tweaks`
* Remove any lines that reference `/opt/amix-vimrc-tweaks` in your `~/.vimrc`

