:register
" output 

"Output the contents of the table when :register command is run:
	:redir => g:reg_out | silent reg | redir END | put =g:reg_out

Type Name Content
  l  ""   something^J
  l  "0   something^J
  l  "1   something^J
  l  "2   something^J
  l  "3   reg^J
  l  "4   ^J
  l  "5   ^J
  l  "6   ^J
  l  "7   ^J
  l  "8   Number of replies: 95^J
  l  "9   Number of replies: 67дд^J
  l  "k   1asdf2.6.3^J1asdf2.6.3^J1asdf2.6.3^J
  c  "q   ^[^[^[
  c  "w   a^M^M^M<80>ku^[<80>ku<80><fd>,<80><fd>.a<80>ku<80>ku<80>ku<80>ku<80>k
  c  "-   ^I
  c  "*   :redir => g:reg_out | silent reg | redir END | put =g:reg_out
  c  ":   print
  c  "/   1.6.3


" we are concerned with * and + registers
" * windows
" + unix


" instead of using :
" use " to yank or put (copy or paste) bytes to the regitster
"
"
"
" we have 
" selection (Shift + v)
" 					"	<register> y/p
"




"write something to the <> register manually:
	"register - *
	

	:let @* = 'value'
	"then try ctrl + v outside;

" Get an external shell output value into the system * register;
	:echo 'pwd'->system()->trim()->setreg('*')
	pwd' is not recognized as an internal or external command,
	operable program or batch file.


" Place the output of $VIMDIR (%VIMDIR%) inside the current file
:redir => g:echo_out | silent echo $VIMDIR | redir END | put =g:echo_out
E:\Programs\Vim the editor\Vim\vim92

