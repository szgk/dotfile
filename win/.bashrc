eval "$(fnm env --use-on-cd --shell=bash)"
# 別ドライブで作業するときパスが通らなくなる問題の解消
export PATH=$PATH:$HOME/.fnm/aliases/default
