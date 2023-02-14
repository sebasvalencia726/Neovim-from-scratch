" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Dial
nmap  <C-a>  <Plug>(dial-increment)
nmap  <C-x>  <Plug>(dial-decrement)
vmap  <C-a>  <Plug>(dial-increment)
vmap  <C-x>  <Plug>(dial-decrement)
vmap g<C-a> g<Plug>(dial-increment)
vmap g<C-x> g<Plug>(dial-decrement)

" <Ctrl-c> and yy copies to clipboard, paste with <shift-insert>
vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
vmap yy    y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>

" Make current file executable using Eunuch.
map <silent> <A-e> :!chmod u+x %<CR>:set filetype=sh<CR>:echo "File is now executable!"<CR>

map <silent> <A-e> :!chmod u+x %<CR>:set filetype=py<CR>:echo "File is now executable!"<CR>
" Execute current file, line and vim command.
map <silent> <A-r> :w<CR>:!%:p<CR>
nmap gr :call ExecuteCurrentLine()<CR>
nmap gt :exe getline('.')<CR>
nmap <silent> <A-p> :call PushLine()<CR>

" Lookup documentation for current word on DevDocs
nmap gm <Plug>(devdocs-under-cursor)
let g:devdocs_filetype_map = {
    \   'javascript.js': 'react',
    \   'java': 'openjdk',
    \ }

" gq to format selection as 80 char justified.
" set formatoptions q
set formatprg=par\ -w79
map gw gqip

" Snippets.
map <silent> sc :call ShowColours()<CR>
map <silent> sC :call ShowChars()<CR>
map <silent> sl :call SnippetList()<CR>
map <silent> sL :LuaSnipListAvailable<CR>
map <silent> ss :call SnippetSave()<CR>
map <silent> se :call SnippetEdit()<CR>
map <silent> gB :call FigletCurrentLine()<CR>
map <silent> ge :call DeleteEndingWhiteSpace()<CR>
map <silent> gh :call OpenHelpAndCheatSheets()<CR>

" Saves a few key presses.
" nnoremap ; :
map <C-s> :w<CR>

" Highlight column in CSV
command! -nargs=1 Csv :call CSVH(<args>)

" SQL and Java flipping.
vnoremap <silent> <A-s> :call SqlFlip()<CR>
" nmap <silent> <leader>F :call PrettyPrintFile()<CR>

" Run macro q with just typing Q.
nnoremap Q @q

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Jump
nmap gj :call JumpToSelection()<CR>

" Function keys.
map <silent> <F1> :Cheat<CR>
map <silent> <F2> :call FoldingToggle()<CR>
map <silent> <F3> :call ToggleAll()<CR>
map <F4> :NvimTreeToggle<CR>
" F5 reserved for kitty, open selected.
" Use to replace last :s command on a range
" * = last range.
" & = last s/foo/bar/
map <F6> :*&<CR>
" Diff current buffer and the next.
map <F7> :vsplit<CR>:bnext<CR>:windo diffthis<CR>
map <F8> :Jaq<CR>
map <F9> :Telescope find_files<CR>
" F10 reserved for kitty, open new terminal.
" F11 reserved for kitty, full screen.
map <F12> :SymbolsOutline<CR>

" Keep X as delete backwards, rather then close buffer, I prefer to use :bd
" nunmap X

