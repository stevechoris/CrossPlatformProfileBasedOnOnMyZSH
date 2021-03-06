#load custom configurations based on different operation system
if [ ! -n "$ZSH" ]; then
  ZSH=~/.oh-my-zsh
fi

if [ -z "$ZSH_CUSTOM" ]; then
  ZSH_CUSTOM="$ZSH/custom/CrossPlatformProfileBasedOnOnMyZSH"
fi

source $ZSH_CUSTOM/CustomShellScripts/all.sh
if [[ "$OSTYPE" = darwin* ]]; then
  source $ZSH_CUSTOM/CustomShellScripts/mac.sh
elif [[ "$OSTYPE" = linux* ]]; then 
  source $ZSH_CUSTOM/CustomShellScripts/linux.sh
else
  echo "Other OS"
fi
