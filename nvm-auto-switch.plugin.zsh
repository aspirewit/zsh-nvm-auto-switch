if [ "$(command -v nvm)" = "" ]; then
  if [ -s "$NVM_DIR/nvm.sh" ]; then
    source "$NVM_DIR/nvm.sh"
  else
    echo "could not find nvm"
  fi
fi

function nvm_auto_switch {
  local NVM_VERSION
  local NVM_RC_FILE=`nvm_find_nvmrc`

  if [ "$NVM_RC_FILE" = "" ]; then
    NVM_VERSION=`nvm_version $(nvm_alias default)`
  else
    NVM_VERSION=`nvm_version $(cat $NVM_RC_FILE)`
  fi

  [ "$(nvm_version_path $NVM_VERSION)/bin" = "$NVM_BIN" ] || nvm use "$NVM_VERSION"
}

autoload -U add-zsh-hook
add-zsh-hook chpwd nvm_auto_switch
