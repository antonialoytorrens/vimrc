#!/bin/sh

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SOURCE_DIR="$SCRIPT_DIR/sources_non_forked"

PLUGINS="
auto-pairs https://github.com/jiangmiao/auto-pairs
ale https://github.com/dense-analysis/ale
vim-yankstack https://github.com/maxbrunsfeld/vim-yankstack
ack.vim https://github.com/mileszs/ack.vim
bufexplorer https://github.com/jlanzarotta/bufexplorer
ctrlp.vim https://github.com/ctrlpvim/ctrlp.vim
mayansmoke https://github.com/vim-scripts/mayansmoke
nginx.vim https://github.com/chr4/nginx.vim
open_file_under_cursor.vim https://github.com/amix/open_file_under_cursor.vim
tlib https://github.com/tomtom/tlib_vim
vim-addon-mw-utils https://github.com/MarcWeber/vim-addon-mw-utils
vim-bundle-mako https://github.com/sophacles/vim-bundle-mako
vim-coffee-script https://github.com/kchmck/vim-coffee-script
vim-colors-solarized https://github.com/altercation/vim-colors-solarized
vim-indent-object https://github.com/michaeljsmith/vim-indent-object
vim-less https://github.com/groenewege/vim-less
vim-pyte https://github.com/therubymug/vim-pyte
vim-snipmate https://github.com/garbas/vim-snipmate
vim-snippets https://github.com/honza/vim-snippets
vim-surround https://github.com/tpope/vim-surround
vim-expand-region https://github.com/terryma/vim-expand-region
vim-multiple-cursors https://github.com/terryma/vim-multiple-cursors
vim-fugitive https://github.com/tpope/vim-fugitive
vim-rhubarb https://github.com/tpope/vim-rhubarb
vim-repeat https://github.com/tpope/vim-repeat
vim-commentary https://github.com/tpope/vim-commentary
vim-gitgutter https://github.com/airblade/vim-gitgutter
gruvbox https://github.com/morhetz/gruvbox
vim-flake8 https://github.com/nvie/vim-flake8
vim-pug https://github.com/digitaltoad/vim-pug
lightline.vim https://github.com/itchyny/lightline.vim
lightline-ale https://github.com/maximbaz/lightline-ale
vim-abolish https://github.com/tpope/vim-abolish
rust.vim https://github.com/rust-lang/rust.vim
vim-markdown https://github.com/plasticboy/vim-markdown
vim-gist https://github.com/mattn/vim-gist
vim-ruby https://github.com/vim-ruby/vim-ruby
typescript-vim https://github.com/leafgarland/typescript-vim
vim-javascript https://github.com/pangloss/vim-javascript
vim-python-pep8-indent https://github.com/Vimjas/vim-python-pep8-indent
vim-indent-guides https://github.com/nathanaelkane/vim-indent-guides
mru.vim https://github.com/vim-scripts/mru.vim
editorconfig-vim https://github.com/editorconfig/editorconfig-vim
dracula https://github.com/dracula/vim
zig.vim https://github.com/ziglang/zig.vim
vim-cpp-enhanced-highlight https://github.com/octol/vim-cpp-enhanced-highlight
vim-clang-format https://github.com/rhysd/vim-clang-format
vim-dispatch https://github.com/tpope/vim-dispatch
vim-go https://github.com/fatih/vim-go
vim-lsp https://github.com/prabirshrestha/vim-lsp
asyncomplete.vim https://github.com/prabirshrestha/asyncomplete.vim
asyncomplete-lsp.vim https://github.com/prabirshrestha/asyncomplete-lsp.vim
vim-lsp-settings https://github.com/mattn/vim-lsp-settings
"

if command -v curl >/dev/null 2>&1; then
    download() { curl -fsSL "$1" -o "$2" 2>/dev/null; }
elif command -v wget >/dev/null 2>&1; then
    download() { wget -qO "$2" "$1" 2>/dev/null; }
else
    printf 'Error: neither curl nor wget is available.\n' >&2
    exit 1
fi

TEMP_DIR=$(mktemp -d)
trap 'rm -rf "$TEMP_DIR"' EXIT INT TERM

update_plugin() {
    name="$1"
    url="$2"
    tar_url="${url}/archive/master.tar.gz"
    extract_dir="$TEMP_DIR/${name}_extract"

    if download "$tar_url" "$TEMP_DIR/${name}.tar.gz"; then
        mkdir -p "$extract_dir"
        if tar xzf "$TEMP_DIR/${name}.tar.gz" -C "$extract_dir" 2>/dev/null; then
            extracted=$(ls "$extract_dir" | head -n 1)
            rm -rf "${SOURCE_DIR:?}/${name}"
            mv "$extract_dir/$extracted" "${SOURCE_DIR}/${name}"
            printf 'Updated %s\n' "$name"
        else
            printf 'Could not extract %s\n' "$name"
        fi
    else
        printf 'Could not download %s\n' "$name"
    fi
}

printf '%s\n' "$PLUGINS" | while IFS=' ' read -r name url; do
    [ -z "$name" ] && continue
    update_plugin "$name" "$url"
done
