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

$files = @{
  "_vimrc" = "~/_vimrc";
  "_vsvimrc" = "~/_vsvimrc";
  "mswin.vim" = "C:/Program Files/Vim/vim90/mswin.vim";
  "azuredatastudio/keybindings.json" = "~\AppData\Roaming\azuredatastudio\User\keybindings.json";
  "azuredatastudio/settings.json" = "~\AppData\Roaming\azuredatastudio\User\settings.json";
  "azuredatastudio/snippets/sql.json" = "~\AppData\Roaming\azuredatastudio\User\snippets\sql.json";
  "vimfiles/autoload/plug.vim" = "~\vimfiles\autoload\plug.vim";
  "vimfiles/colors/kuroi.vim" = "~\vimfiles\colors\kuroi.vim";
  "vimfiles/colors/solarized.vim" = "~\vimfiles\colors\solarized.vim";
}

$files.GetEnumerator() | % {
  "`"$($_.Key)`" `"$($_.Value)`" are different: $([bool](diff (cat $_.Key) (cat $_.Value)))"
}
