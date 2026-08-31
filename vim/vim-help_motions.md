
**Help with vim**

### Some basics
```
   h       j     k    l 
[right] [down] [up] [left]
	    or
	arrow keys
[shift + INS] - paste text from external source (different from vim's
clipboard)
d - cut
:y - yank (copy) [y for visual mode]
p [normal mode] - paste
u - undo
[Ctrl + r] - redo
:e [path] - open file, located on it's path.
[:e C:\Documents\my-file.txt]

:pwd 	- current directory (usually C:\Users\[user_name])
:cd [path] - change directory (this file is located in D:\Documents\Personel)
:w	- write
:wq	- write & quit
ZZ	- quit AND make changes.
ZQ	- quit WITHOUT make any changes.
:q!	- same as "ZQ".
i,a,  	- instert mode
v 	- visual mode
esc	- exit from current mode.
dd	- delete whole line.
G	- end of document
gg	- top of document
w - skip word (starting letter)
e - skip word (end letter)
b - move back one word
/ search
n - forward to next match of searched word
N - backward previous match of searched word
:s/old/new - substitute (replace)
:%s/old/new/gc (global changing) (confirm each match)
0 - beginning of line
^ - beginning of line where has character
$ - end of a line
c - change
shift a - start edit at the end of the line
c$ - change from start of cursor to end of line
cw - change word
:! [command from dos/bash] - executes command from the console IN vim.
{ - up a paragraph
} - down a paragraph
x - deletes a character
q: history
```

### Get help for command
:help <command> (registers)

### Fonts
```
"Windows / Mac
set guifont=<font>:h<n>

"Linux
set guifont=<font>\ <n>

"Get current font name
set guifont

"Set font which name has spaces
set guifont=Lucida\ Console:h<n>

"Choose font
set guifont=<tab>
```
### Scroll whole page
```
ctrl y scroll page down
ctrl e scroll page up
```

### Switch between 2 files
```
ctrl 6 (normal mode) switch between 2 files - one open and one in buffer
ctrl 6 (insert mode) switch keyboard layout
```

### Highlight row / column
```
set cursorline/column
```

### Registers (copy-paste)
```
:registers - inspect contents in registers

--- Registers ---
""   the default register
"0-9 - last saved copies
"-   
"*   windows clipboard
"+   linux register (varies)
":   reg
"%   file name
"/   

call register call ["] (like calling : but ")
easier -> Ctrl + r <register> (ctrl+r) is like ["] (USE IN INSERT MODE, OTHER MEANING IS UNDO)
:help register 🚁
```



### Dynamic calc vim register
```
insert CTRL + r -> "
"= <expression to calc>
i, Ctrl+r (ins), =, 123+3, enter
recall "= ----> CTRL+r and =
```
file name ctrlR + %






### Split screen and resize

```
split screen
      Ctrl + w
                  v - vertical
                  s - horizontal
ctrl w =                equal size
+, -, >, or <           resize
change window - ctrl w w
Ctrl l (norm) refresh screen
```


### Working with tabs

```
:tabnew
next        gt
previous    gT
:q
```







*At the end there awayways will be something that's missing.. :)*
