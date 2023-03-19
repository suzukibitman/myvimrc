"imap <F2> <CR>Date: <Esc>:read !date<CR>kJ
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200
nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>
nnoremap <C-]> g<C-]> 
nnoremap B :ls<CR>
nnoremap <silent> tm :<C-u>call <SID>MoveToNewTab()<CR>
nnoremap <space>f :echo cfi#format("%s", "")<CR>
nnoremap <Space>t :<C-u>tab help<Space>
nnoremap <Space>v :<C-u>vertical belowright help<Space>
"----------------------------------------------------
"map
"----------------------------------------------------
nmap <C-h> :Tlist<CR>
nmap <C-n> :noh<CR>
nmap <C-e> :NERDTreeToggle<CR>
nmap <f2> :bp<CR>
nmap <f3> :bn<CR>
nmap <f4> :vs<CR>
"nmap <f5> :source %<CR>
nmap <f5> :!python3 % <CR> 
nmap <f6> :echo expand("%:p")<CR>
nmap <f8> :!bash<CR>
nmap <f11> :q<CR>
nmap <f12> :bd %<CR>
"nmap <C-g> :vim
nmap <C-g> :vim  \| cw <s-Left><s-Left>
nmap <C-k> :vim  <C-r>0 \| cw <s-Left><s-Left>
nmap <C-j> :set relativenumber<CR>
inoremap <silent> jj <ESC>


 " let g:airline_left_sep='>'
"let g:airline_left_sep='%{cfi#get_func_name() == "" ? "no function" :  "". cfi#get_func_name() . "()"}'
  "let &g:airline_section_c='%{cfi#get_func_name() == "" ? "no function" :  "". cfi#get_func_name() . "()"}'
  "(bufferline or filename)
"let g:airline_right_sep = '◀'

let g:airline#extensions#tabline#enabled = 1
"let g:airline_section_b = airline#section#create(['mode', 'crypt'])
