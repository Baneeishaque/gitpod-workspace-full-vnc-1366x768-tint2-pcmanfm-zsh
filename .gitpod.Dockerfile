FROM baneeishaque/gitpod-workspace-full-vnc-1366x768-tint2-pcmanfm

RUN sudo apt update | tee -a /tmp/apt.log \
 && sudo apt install -y \
     zsh | tee -a /tmp/apt.log \
 && sudo rm -rf /var/lib/apt/lists/*

RUN cd $HOME \
 && wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh | tee /tmp/wget-oh-my-zsh.log

RUN sed -i 's/_THEME=\"robbyrussell\"/_THEME=\"xiong-chiamiov-plus\"/g' ~/.zshrc

# RUN sed -i 's/plugins=(git)/plugins=(git gradle gradle-completion adb sdk common-aliases dircycle dirhistory dirpersist history copydir copyfile autojump fd git-completion git-auto-status git-prompt gitignore git-lfs git-extras last-working-dir per-directory-history perms wd safe-paste thefuck systemadmin scd pj magic-enter man command-not-found jump timer colored-man-pages jsontools colorize ripgrep httpie sprunge nmap transfer universalarchive catimg extract)/g' ~/.zshrc

# RUN sed -i 's/plugins=(git)/plugins=(git gradle)/g' ~/.zshrc

