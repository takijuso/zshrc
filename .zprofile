() {
  local anyenv_path="${HOME}/.anyenv"

  if [ -d "${anyenv_path}" ]; then
    export PATH="${anyenv_path}/bin:$PATH"
    eval "$(anyenv init -)"
  fi
}

() {
  if (( $+commands[go] )); then
    local gopath="${HOME}/go"

    if [ ! -d "${gopath}" ]; then
      mkdir "${gopath}"
    fi

    export GOPATH="${gopath}"
    export PATH=${PATH}:${GOPATH}/bin
  fi
}

() {
  if (( $+commands[yarn] )); then
    export PATH="$PATH:$(yarn global bin)"
  fi
}

() {
  if (( $+commands[direnv] )); then
    eval "$(direnv hook zsh)"
  fi
}

() {
  if (( $+commands[thefuck] )); then
    eval "$(thefuck --alias)"
  fi
}
