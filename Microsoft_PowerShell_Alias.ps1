// Add Alias => Set-Alias
// Check Alias => Get-Alias
// Delete Alias => del Alias:\Alias_To_Delete

// System Settings
Set-Alias ll Get-ChildItem
function Desktop { cd ~/Desktop }
Set-Alias main Desktop
function Vim-Setting { vim ~/.vimrc }
Set-Alias vimrc Vim-Setting

// Git Settings
function Git-Add { git add }
Set-Alias add Git-Add
function Git-Amend { git commit --amend }
Set-Alias amend Git-Amend
function Git-Commit { git commit }
Set-Alias commit Git-Add
function Git-Checkout { git checkout }
Set-Alias checkout Git-Checkout
function Git-Diff { git diff }
Set-Alias dif Git-Diff
function Git-Status { git status }
Set-Alias status Git-Status
function Git-Log { git log }
Set-Alias log Git-Log
function Git-Pull { git pull }
Set-Alias pull Git-Pull
function Git-Push { git push }
Set-Alias push Git-Push
function Git-Stash { git stash }
Set-Alias stash Git-Stash
function Git-Pop { git stash pop }
Set-Alias pop Git-Pop
function Git-List { git stash list }
Set-Alias list Git-List
function Git-Reset { git reset }
Set-Alias reset Git-Reset

// Docker Settings
function Docker-Access { docker exec -it }
Set-Alias access Docker-Access
function Docker-Build { docker build -t }
Set-Alias build Docker-Build
function Docker-Container { docker container }
Set-Alias container Docker-Container
function Docker-DelContainer { docker rm -f }
Set-Alias delc Docker-DelContainer
function Docker-DelImage { docker image rm -f }
Set-Alias deli Docker-DelImage
function Docker-Exec { docker exec }
Set-Alias exec Docker-Exec
function Docker-Image { docker image }
Set-Alias image Docker-Image
function Docker-Run { docker run }
Set-Alias run Docker-Run
function Docker-ShowContainer { docker ps }
Set-Alias showc Docker-ShowContainer
function Docker-ShowImage { docker images }
Set-Alias showi Docker-ShowImage
function Docker-Stop { docker stop }
Set-Alias stop Docker-Stop
function Docker-Tag { docker tag }
Set-Alias tag Docker-Tag