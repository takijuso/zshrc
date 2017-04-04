# Load profiles
() {
  local profiles_dir="${HOME}/.zsh/profiles"

  for profile in `ls ${profiles_dir}`; do
    source ${profiles_dir}/${profile}
  done
}

# () {
#   local rbenv_path="${HOME}/.rbenv"
#
#   if [ -d "${rbenv_path}" ]; then
#     export PATH="${rbenv_path}/bin:$PATH"
#     eval "$(rbenv init -)"
#   fi
# }
#
# () {
#   if (( $+commands[go] )); then
#     local gopath="${HOME}/go"
#
#     if [ ! -d "${gopath}" ]; then
#       mkdir "${gopath}"
#     fi
#
#     export GOPATH="${gopath}"
#     export PATH=${PATH}:${GOPATH}/bin
#   fi
# }
#
# () {
#   if (( $+commands[yarn] )); then
#     export PATH="$PATH:$(yarn global bin)"
#   fi
# }
#
# () {
#   if (( $+commands[direnv] )); then
#     eval "$(direnv hook zsh)"
#   fi
# }
#
# () {
#   if (( $+commands[thefuck] )); then
#     eval "$(thefuck --alias)"
#   fi
# }
