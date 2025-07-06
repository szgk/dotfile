export PATH=/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/opt/homebrew/bin:/opt/homebrew/bin:/usr/local/share/dotnet
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:/Users/gaku_suzuki/Library/Android/sdk/platform-tools"
export PATH="$PATH:/Users/gaku_suzuki/Library/Android/sdk/emulator"
export PATH="$PATH:/Applications/Unity/Hub/Editor/2021.3.45f1/Unity.app/Contents/MacOS"
export PATH="$PATH:/Users/gaku_suzuki/.rbenv/versions/3.4.4/bin"

export CLAUDE_CODE_LANGUAGE="ja"
export CLAUDE_CODE_LOCALE="ja-JP"
# Added by `rbenv init` on #午後
eval "$(rbenv init - --no-rehash zsh)"

## Git補完
fpath=(
  ${HOME}/.zsh/completions
  ${fpath}
)
autoload -Uz compinit
compinit

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# git-promptの読み込み
source ~/.zsh/git-prompt.sh

setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f
\$ '