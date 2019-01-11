# Vim Cheat Sheet by [socketwiz](https://gist.github.com/socketwiz)
* See original sheet [here](https://gist.github.com/socketwiz/2645891)

## motions

motion  | description 
------------- | ------------- 
h | Count characters left  
l | Count characters right  
^ | To the first character of the line  
$ | To the last character of the line  
f&lt;char&gt;  | To the counth character occurrence to the right.  F&lt;char&gt; to the counth character occurrence to the left  
t&lt;char&gt;	| To 1 character just before the counth character occurrence to the right  
T&lt;char&gt;	| To 1 character just before the counth character occurrence to the left  
w | Count words forward 
W | Count words forward (different definition for what a word is, includes special characters and such)
e | Count forward to the end of word  
b | Count words backward  
i&lt;{&lt;"'&gt; | Inside something like inside brackets or parenthesis for example  

trigger  | effect 
------------- | ------------- 
c{motion} | Change    
d{motion} | Delete 
y{motion} | Yank into register  
g~{motion}| Toggle case  
gu{motion}| Make lowercase  
gU{motion}| Make uppercase  
&gt;{motion} | Shift right  
&lt;{motion} | Shift left  
={motion} | Auto-indent

## buffer management

command  | description
------------- | ------------- 
&lt;C-\^&gt; or &lt;C-6&gt; | Switch to the buffer you just left

## split windows

command  | description
------------- | ------------- 
&lt;C-w&gt;s or :sp[lit] &lt;file&gt;| Split file horizontally.
&lt;C-w&gt;v or :vsp[lit] &lt;file&gt;|  Split file vertically  
&lt;C-w&gt;w | cycle between open windows  
&lt;C-w&gt;h | focus the window to the left  
&lt;C-w&gt;j | focus the window below  
&lt;C-w&gt;k | focus the window above  
&lt;C-w&gt;l | focus the window to the right  
:cl[ose]	&lt;C-w&gt;c | close the active window  
:on[ly] &lt;C-w&gt;o	| keep only the active window, closing all others  

## spelling

command  | description
------------- | ------------- 
]s | Jump to next spelling error  
[s | Jump to previous spelling error  
z= | Suggest corrections for current word  
zg | Add the current word to spell file  
zw | Remove the current word from spell file  

## code folding

command  | description
------------- | ------------- 
zf{motion} | folds code when "foldmethod" set to manual or "marker"  
za| toggle fold at cursor
zo| opens fold at cursor
zc| close fold at cursor
zR| open all
zM| close all

## search and replace

command  | description
------------- | ------------- 
:args \*\*/\*.txt | Multi-file Step 1) populate the argument list with the files you want to search
:argdo %s/search/replace/gc | Mult-file Step 2) replace all occurrences of search with replace but prompt before doing so
*|search for the word under the cursor


## jumps

command  | description
------------- | ------------- 
:jumps | display the jump list
&lt;C-o&gt; |jump backwards through the jump list
&lt;C-i&gt; |jump forwards through the jump list
:changes | display the change list
g; |jump backwards through the changes list
g, |jump forwards through the changes list
gf |jump to the file name under the cursor

## changes

command  | description
------------- | ------------- 
:changes | display the change list
g; |jump backwards through the changes list
g, |jump forwards through the changes list
gf |jump to the file name under the cursor
  
## marks

command  | description
------------- | ------------- 
:marks | display the marks list
m&lt;upper case&gt; |set a file bookmark
m&lt;lower case&gt; |set a buffer bookmark
'&lt;character&gt; |jump to the mark
''|jump to the line in the current buffer where jumped from
:delmarks &lt;character&gt;|delete specified mark
:delmarks a-d|delete marks a through d
:delmarks a,b,x,y|delete only marks a,b,x and y
:delmarks!|delete all lower case marks

## registers

command  | description
------------- | ------------- 
:registers | display the register list
&quot;&lt;lower case register&gt;{motion} |overwrite or use contents of register
&quot;&lt;upper case register&gt;{motion} |append or use contents of register
0|populated with last yanked text

## macros

command  | description
------------- | ------------- 
q{register} |start recording and store it in the specified register
q|stop recording
{count}@{register}|execute specified macro count times


## ctags

command  | description
------------- | ------------- 
:tags |display the tags stack
&lt;C-]&gt; | goto definition
&lt;C-t&gt; | goto previous
:ta&lt;method&gt; | takes you to the method definition where method definition could be a regex that produces a list
:tn: | goes to next in list
:tp | goes to previous in list
:tf | goes to first in list
:tl | goes to last in list


## quickfix window

command  | description
------------- | ------------- 
:copen | Open the quickfix window  
:ccl | Close it  
:cw | Open it if there are "errors", close it otherwise (some people prefer this)  
:cn | Go to the next error in the window  
:cnf | Go to the first error in the next file  
:cc{num} | Go to the error by number  


## Navigation

key  | move to 
------------- | ------------- 
%	|End of construct
[[	|Backwards to the beginning of the current function.
][	|Forwards to the beginning of the current function.
]}	|Beginning of the current block.
[{	|End of the current block.
}[	|Beginning of the current comment block.
}]	|End of the current comment block.
gd	|First usage of the current variable name. (Mnemonic: go to definition).
gD	|Go to the first global usage of the current variable name.
gg	|beginning of file
G	|end of file


## Addon References

### ctags <http://ctags.sourceforge.net/>

command  | effect 
------------- | ------------- 
:!ctags -R |jump to first tag that matches word under the cursor  
&lt;C-]&gt; | Prompt user to select from multiple matches for the word under the cursor.  
g&lt;C-]&gt; | present a list of choices if there is more than a single tag to jump to  
&lt;C-t&gt; | like the back button for tag history  
:tag &lt;keyword&gt; | jump to first tag that matches word under the cursor  
:tjump &lt;keyword&gt; | Prompt user to select from multiple matches for the word under the cursor.  
:pop or &lt;C-t&gt; | Prompt user to select from multiple matches for the word under the cursor.  
:tselect | Prompt user to choose an item from the tag matchlist  

### tcomment <https://github.com/tomtom/tcomment_vim>

command  | description
------------- | -------------
gc{motion} | Toggle comments (for small comments within one line the &amp;filetype_inline style will be used, if defined)  
gcc | Toggle comment for the current line  
gC{motion} | Comment region  
gCc | Comment the current line  
&lt;C- _ &gt;&lt;C- _ &gt; | :TComment  
&lt;C- _ &gt;b | :TCommentBlock  

### vim-rails <https://github.com/tpope/vim-rails>

command  | description
------------- | ------------- 
:A | Alternate  
:R | Related  
:Rmodel | Model
:Rview | View 
:Rcontroller | Controller
:help rails-navigation | Help on this plugin.

### vim-surround <https://github.com/tpope/vim-surround>

command  | description
------------- | -------------
cs&lt;current&gt;&lt;new&gt; | change old delimeter to new  
ds | remove delimeters  
ysiw&lt;delimiter&gt; | wrap current word  
S&lt;delimiter&gt; |while in visual mode  
S= | in visual mode, rails ERB tag (requires vim-rails)  
S- | in visual mode, rails ERB tag (requires vim-rails)  
S# | in visual mode, rails ERB tag (requires vim-rails)  
&lt;C-s&gt;= | rails ERB tag (requires vim-rails)  
&lt;C-s&gt;- | rails ERB tag (requires vim-rails)  
&lt;C-s&gt;# | rails ERB tag (requires vim-rails)  


## miscellaneous

command  | description
------------- | ------------- 
v | enable characterwise Visual mode  
V | enable linewise Visual mode  
&lt;C-v&gt;| enable blockwise Visual mode  
gv | reselect the last visual selection  
o | go to other end of highlighted text  
"+p | paste from system clipboard  
:0,$d | delete every line in a file
&lt;C-a&gt; | increment number
&lt;C-x&gt; | decrement number
vit | select contents inside of an HTML tag
:map|List all currently define mappings
:verbose map|Display where mapping was defined
g/{pattern}/d|Delete every line matching pattern.
v/{pattern}/d|Delete every line _not_ matching pattern.
