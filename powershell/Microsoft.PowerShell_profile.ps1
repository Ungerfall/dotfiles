oh-my-posh init pwsh --config "C:\development\dotfiles\powershell\themes\patriksvensson.ungerfall.omp.json" | Invoke-Expression

# PowerShell parameter completion shim for the dotnet CLI
Register-ArgumentCompleter -Native -CommandName dotnet -ScriptBlock {
     param($commandName, $wordToComplete, $cursorPosition)
         dotnet complete --position $cursorPosition "$wordToComplete" | ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
         }
 }

# Aliases
New-Alias -Name os -Value Out-String
New-Alias -Name grep -Value findstr