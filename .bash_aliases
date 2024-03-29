# Aliases
alias cd..="cd .."
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

decrypt() {
    sudo mount -t ecryptfs ${1} ${1} -o key=passphrase,ecryptfs_cipher=aes,ecryptfs_key_bytes=32,ecryptfs_passthrough=no,ecryptfs_enable_filename_crypto=yes,ecryptfs_sig=$(sudo cat ~root/.ecryptfs/sig-cache.txt)
}

encrypt() {
    sudo umount ${1}
}

source git-prompt
export PS1="[\[\e[1;36m\]\u\[\e[0;39m\]@\h \[\033[01;34m\]\W\[\033[00m\]]\[\e[0;32m\]\$(__git_ps1) \[\e[0;39m\]\$ "

# editor
export EDITOR=emacs
export GIT_EDITOR=emacs

# Environment modules
. /usr/share/modules/init/bash

# Spack
. /home/benjamin/sw/spack/share/spack/setup-env.sh

export MODULEPATH=
module use /home/benjamin/sw/modules/linux-ubuntu22.04-skylake
