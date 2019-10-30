function nvm_auto_switch {
  local NVM_VERSION
  local NVM_RC_FILE=`nvm_find_nvmrc`

  if [ "$NVM_RC_FILE" = "" ]; then
    local DEFAULT_VERSION=`nvm_alias default`
    NVM_VERSION=`nvm_version $DEFAULT_VERSION`
  else
    NVM_VERSION=`nvm_version $(cat $NVM_RC_FILE)`
  fi

  [ "$(nvm_version_path $NVM_VERSION)/bin" = "$NVM_BIN" ] || nvm use "$NVM_VERSION"
}

autoload -U add-zsh-hook
add-zsh-hook chpwd nvm_auto_switch
