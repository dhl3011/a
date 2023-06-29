set ls=0 ts=4 sw=4 sts=4 clipboard=unnamedplus nobackup nowritebackup noswapfile
syntax on
inoremap <c-w> <esc>:w<cr>
noremap <c-w> <esc>:w<cr>
noremap <c-q> <esc>:q<cr>
noremap <c-h> <esc>:bp<cr>
noremap <c-l> <esc>:bn<cr>
noremap ; <esc>:noh<cr>:echo &ft<cr>
noremap <c-o> <esc>:e ~/.bashrc<cr>:e ~/.config/i3/config<cr>:e ~/.config/nvim/init.vim<cr>:e ~/.Xresources<cr>
noremap <c-r> <esc>:call R()<cr><cr>
noremap <silent> <c-c> :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <c-u> :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

au! BufWritePost init.vim so %
au BufWritePost .Xresources silent !xrdb /root/.Xresources
au BufWritePost *.html :!google-chrome --no-sandbox %
au BufEnter * silent call C()

function C()
    if &ft=='vim' 
		g:c='"'
	elseif &ft=='xdefaults' 
		g:c='!'
	else 
		g:c='#'
	endif
endfunction
