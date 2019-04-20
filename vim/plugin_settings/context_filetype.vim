let g:context_filetype#filetypes = {
		\ 'vue' : [
		\   {
		\     'start' : '^<script',
		\     'end' : '^<\/script>',
		\     'filetype' : 'javascript',
		\   },
		\   {
		\     'start' : '^<style',
		\     'end' : '^<\/style>',
		\     'filetype' : 'css',
		\   }
		\ ],
		\}
