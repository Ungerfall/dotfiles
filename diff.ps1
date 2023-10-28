# files
# _vimrc
# _vsvimrc
# mswin.vim
# azuredatastudio/keybindings.json
# azuredatastudio/settings.json
# azuredatastudio/keybindings.json
# azuredatastudio/snippets/sql.json
# vimfiles/autoload/plug.vim
# vimfiles/colors/kuroi.vim
# vimfiles/colors/solarized.vim

[bool](diff (cat _vimrc) (cat ~/_vimrc))
[bool](diff (cat _vsvimrc) (cat ~/_vsvimrc))
[bool](diff (cat mswin.vim) (cat "C:/Program Files/Vim/vim90/mswin.vim"))
[bool](diff (cat azuredatastudio/keybindings.json) (cat "~\AppData\Roaming\azuredatastudio\User\keybindings.json"))
[bool](diff (cat azuredatastudio/settings.json) (cat "~\AppData\Roaming\azuredatastudio\User\settings.json"))
[bool](diff (cat azuredatastudio/snippets/sql.json) (cat "~\AppData\Roaming\azuredatastudio\User\snippets\sql.json"))
[bool](diff (cat vimfiles/autoload/plug.vim) (cat "~\vimfiles\autoload\plug.vim"))
[bool](diff (cat vimfiles/colors/kuroi.vim) (cat "~\vimfiles\colors\kuroi.vim"))
[bool](diff (cat vimfiles/colors/solarized.vim) (cat "~\vimfiles\colors\solarized.vim"))
