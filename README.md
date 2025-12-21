## Windows

### vim
1. Install plug manually into ~/vimfiles
2. For ~/_vimrc use `source` command
```
" Include dotfiles config
source C:/development/dotfiles/_vimrc
```
3. For ~/_vsvimrc use symbolic link
```powershell
ni -ItemType SymbolicLink -Path ~/_vsvimrc -Target C:/development/dotfiles/_vsvimrc
```

### git
1. For ~/.gitconfig use `include` directive
```
# This is Git's per-user configuration file.
[include]
  path = "C:/development/dotfiles/.gitconfig"
[user]
  name = Some Name
  email = some_email@example.com
```

### windows terminal
1. Create a symbolic link for dotfiles/windows-terminal/settings.json in ~/AppData/Local/Packages/Microsoft.WindowsTerminal_<some_id>/LocalState
2. Create a symbolic link for dotfiles/powershell/Microsoft.PowerShell_profile.ps1 in ~/Documents/PowerShell/
