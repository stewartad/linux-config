#!/usr/bin/env bash

LOCAL_DIRS=("${HOME}/.config/nvim" "${HOME}/.oh-my-zsh" "${HOME}/.config/alacritty")
LOCAL_FILES=("${HOME}/.zshrc")

copy_dirs() {
    for d in ${LOCAL_DIRS}; do
        cp -r "${d}" .
    done
}

copy_files() {
    for f in ${LOCAL_FILES}; do
        cp -r "${f}" .
    done
}

main() {
   copy_dirs 
   copy_files
}

main
