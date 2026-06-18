# Antoni's vimrc

Personal Vim configuration, forked from [amix/vimrc](https://github.com/amix/vimrc) with personal tweaks. Installs system-wide and is available for all users.

## Installation

```bash
git clone --depth=1 https://github.com/antonialoytorrens/vimrc.git /opt/amix-vimrc-tweaks
cd /opt/amix-vimrc-tweaks
sudo make install
```

## Updating

```bash
cd /opt/amix-vimrc-tweaks
git pull --rebase
sudo make install
```

## Uninstalling

* Remove `/opt/amix-vimrc-tweaks`
* Remove `/etc/vim/vimrc.local`


## Fonts

Recommended font: [IBM Plex Mono](https://github.com/IBM/plex) (open-source, great for code).

Other fonts the config will try to use:

* [Hack](http://sourcefoundry.org/hack/)
* [Source Code Pro](https://adobe-fonts.github.io/source-code-pro/)


## Included Plugins

* [ack.vim](https://github.com/mileszs/ack.vim): Vim plugin for `the_silver_searcher` (ag) or ack — a fast grep
* [bufexplorer.zip](https://github.com/vim-scripts/bufexplorer.zip): Quickly switch between buffers (`<leader>o`)
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim): Fuzzy file, buffer, mru and tag finder (`<Ctrl+F>`)
* [lightline.vim](https://github.com/itchyny/lightline.vim): Light and configurable statusline/tabline
* [open_file_under_cursor.vim](https://github.com/amix/open_file_under_cursor.vim): Open file under cursor with `gf`
* [pathogen.vim](https://github.com/tpope/vim-pathogen): Runtime path manager
* [vim-snipmate](https://github.com/garbas/vim-snipmate): TextMate-style snippets
* [ale](https://github.com/dense-analysis/ale): Async syntax and lint checking
* [vim-commentary](https://github.com/tpope/vim-commentary): Comment lines with `gcc`, motions with `gc`
* [vim-expand-region](https://github.com/terryma/vim-expand-region): Visually select increasingly larger regions
* [vim-fugitive](https://github.com/tpope/vim-fugitive): Git wrapper
* [vim-indent-object](https://github.com/michaeljsmith/vim-indent-object): Text object for indent level
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors): Sublime Text style multiple selections (`<C-s>`)
* [vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack): Yank history (kill-ring)
* [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides): Visual indent level display
* [editorconfig-vim](https://github.com/editorconfig/editorconfig-vim): EditorConfig support
* [vim-dispatch](https://github.com/tpope/vim-dispatch): Async `:make` with results in quickfix (`<leader>m`)
* [vim-lsp](https://github.com/prabirshrestha/vim-lsp): LSP client (go-to-definition, references, rename, hover)
* [asyncomplete.vim](https://github.com/prabirshrestha/asyncomplete.vim): Async completion popup as you type
* [asyncomplete-lsp.vim](https://github.com/prabirshrestha/asyncomplete-lsp.vim): Bridge between vim-lsp and asyncomplete
* [vim-lsp-settings](https://github.com/mattn/vim-lsp-settings): Auto-installs language servers (clangd, gopls, zls, etc.)


## Included Color Schemes

Type `:colorscheme <Tab>` to browse, or set one in `my_configs.vim`.

* [peaksea](https://github.com/vim-scripts/peaksea): Default
* [dracula](https://github.com/dracula/vim)
* [gruvbox](https://github.com/morhetz/gruvbox)
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
* [vim-irblack](https://github.com/wgibbs/vim-irblack)
* [mayansmoke](https://github.com/vim-scripts/mayansmoke)
* [vim-pyte](https://github.com/therubymug/vim-pyte)


## Included Language Support

* [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
* [vim-less](https://github.com/groenewege/vim-less)
* [vim-bundle-mako](https://github.com/sophacles/vim-bundle-mako)
* [vim-markdown](https://github.com/plasticboy/vim-markdown)
* [nginx.vim](https://github.com/vim-scripts/nginx.vim)
* [rust.vim](https://github.com/rust-lang/rust.vim)
* [vim-ruby](https://github.com/vim-ruby/vim-ruby)
* [typescript-vim](https://github.com/leafgarland/typescript-vim)
* [vim-javascript](https://github.com/pangloss/vim-javascript)
* [vim-python-pep8-indent](https://github.com/Vimjas/vim-python-pep8-indent)
* [vim-go](https://github.com/fatih/vim-go): Full Go support — syntax, auto-imports via `goimports`, go-to-definition, docs, run/build/test
* [zig.vim](https://github.com/ziglang/zig.vim): Zig syntax, indent, and `zig fmt` on save
* [vim-cpp-enhanced-highlight](https://github.com/octol/vim-cpp-enhanced-highlight): Enhanced C/C++ syntax (class scope, member variables, templates)
* [vim-clang-format](https://github.com/rhysd/vim-clang-format): Run `clang-format` with `<leader>cf`; respects `.clang-format` files


## How to Add Your Own Customizations

Create `/opt/amix-vimrc-tweaks/my_configs.vim` and add any extra `vimrc`-syntax lines there. Example:

```vim
set number
colorscheme gruvbox
```

To add plugins via pathogen:

```bash
cd /opt/amix-vimrc-tweaks
git clone git://github.com/tpope/vim-rails.git my_plugins/vim-rails
```


## Key Mappings

The [leader](http://learnvimscriptthehardway.stevelosh.com/chapters/06.html#leader) is `,`.

### Normal mode

| Mapping | Action |
|---------|--------|
| `<leader>w` | Fast save |
| `<leader>bd` | Close current buffer |
| `<leader>ba` | Close all buffers |
| `<leader>l` / `<leader>h` | Next / previous buffer |
| `<leader>tn` | New tab |
| `<leader>to` | Close other tabs |
| `<leader>tc` | Close tab |
| `<leader>tm` | Move tab |
| `<leader>tl` | Toggle last tab |
| `<leader>te` | Edit file in current buffer's directory |
| `<leader>cd` | Switch CWD to current buffer's directory |
| `<C-j/k/h/l>` | Move between windows |
| `<leader><cr>` | Clear search highlight |
| `<leader>q` | Open scratch buffer |
| `<leader>x` | Open markdown scratch buffer |
| `<leader>pp` | Toggle paste mode |
| `<leader>o` | Open bufexplorer |
| `<C-f>` / `<leader>j` | Open ctrlp |
| `<leader>b` | ctrlp buffer list |
| `<leader>f` | MRU file list |
| `<leader>g` | Ack search |
| `<leader>a` | Next ALE error |
| `<leader>d` | Toggle GitGutter |
| `<leader>v` | Copy Git line URL to clipboard |
| `F5` | Run current file (C, C++, Java, Python, Go, Bash, HTML) |

### Visual mode

| Mapping | Action |
|---------|--------|
| `*` / `#` | Search for current selection |
| `gv` | Ack after selected text |
| `<leader>r` | Search and replace selected text |
| `$1` `$2` `$3` | Surround with `()` `[]` `{}` |
| `$$` `$q` `$e` | Surround with `""` `''` `` `` `` |

### Insert mode

| Mapping | Action |
|---------|--------|
| `$1` `$2` `$3` `$4` | Insert `()` `[]` `{}` `{\n}` |
| `$q` `$e` | Insert `''` `""` |
| `xdate` | Insert current date/time |
| `<C-j>` | Trigger snipmate snippet |

### Command line

| Mapping | Action |
|---------|--------|
| `$q` | Delete up to last `/` |
| `<C-A>` / `<C-E>` | Home / End |
| `<C-K>` | Delete to end of line |
| `<C-P>` / `<C-N>` | Previous / next command |
| `:W` | Save as sudo |

### Spell checking

| Mapping | Action |
|---------|--------|
| `<leader>ss` | Toggle spell check |
| `<leader>sn` / `<leader>sp` | Next / previous misspelling |
| `<leader>sa` | Add word to dictionary |
| `<leader>s?` | Suggest corrections |

### LSP (vim-lsp + asyncomplete)

| Mapping | Action |
|---------|--------|
| `gd` | Go to definition |
| `gr` | Find references |
| `gi` | Go to implementation |
| `K` | Hover / show docs |
| `<leader>rn` | Rename symbol |
| `<leader>]` | Next diagnostic |
| `<leader>[` | Previous diagnostic |
| `<Tab>` / `<S-Tab>` | Navigate completion popup |
| `<CR>` | Confirm completion |

Run `:LspInstallServer` inside a file to auto-install the language server for that filetype (clangd for C/C++, gopls for Go, zls for Zig, etc.).

### C/C++ and Clang

| Mapping | Action |
|---------|--------|
| `<leader>cf` | Run clang-format on selection or file |
| `<leader>a` | Jump to next ALE error (gcc/clang inline, as you save) |
| `<leader>m` | Run `make` async (vim-dispatch), errors go to quickfix |
| `<leader>M` | Run `make` in background (no quickfix focus) |
| `<leader>n` / `<leader>p` | Next / previous quickfix error |

### GDB (termdebug, vim 8.1+ with `+terminal`)

| Mapping | Action |
|---------|--------|
| `<leader>dd` | Start Termdebug |
| `<leader>dr` | Run program |
| `<leader>db` | Set breakpoint at cursor |
| `<leader>dc` | Continue |
| `<leader>dn` | Next (step over) |
| `<leader>ds` | Step (step into) |

### Cope (quickfix)

| Mapping | Action |
|---------|--------|
| `<leader>cc` | Open cope |
| `<leader>n` / `<leader>p` | Next / previous result |
