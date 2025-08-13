return {
	"jpalardy/vim-slime",
	init = function()
		vim.g.slime_target = "tmux"
		vim.cmd(' let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"} ')
		vim.cmd('let g:slime_bracketed_paste = 1')
	end,
}
