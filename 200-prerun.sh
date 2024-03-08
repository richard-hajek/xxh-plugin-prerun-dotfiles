mkdir -p ~/.cache/bash

if hash git &> /dev/null; then
    sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply richard-hajek

    if hash bash &> /dev/null; then
        git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    fi

    if hash zsh &> /dev/null; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    fi
fi
