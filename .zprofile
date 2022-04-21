
# load ~/.zshrc file
if [ -f ~/.zshrc ]; then
    source ~/.zshrc
fi

# HomeBrew
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

