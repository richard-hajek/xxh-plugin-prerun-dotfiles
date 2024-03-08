echo Running ver 2

mkdir -p ~/.cache/bash

if hash git &> /dev/null; then

    if [[ ! -f ~/bin/chezmoi ]]; then
        sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply richard-hajek
    fi

    if hash bash &> /dev/null; then
        [ ! -d ~/.bash_it  ] && git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    fi

    if hash zsh &> /dev/null; then
        [ ! -d ~/.oh-my-zsh ] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    fi
fi
