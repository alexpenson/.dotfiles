# .bash_profile file, inspired by grepinsight :)
# Oliver Elliott, oe2118@columbia.edu
# 20130726

# Do this first in your home:
#mkdir -p .bash_prefs/bash_prefs/local
#touch .bash_prefs/bash_prefs/local/{bash_aliases_local,bash_settings_local,bash_paths_local,bash_welcome_local,bash_inirun_local}
#mkdir -p .bash_prefs/bash_prefs/share
#touch .bash_prefs/bash_prefs/share/{bash_aliases_share,bash_settings_share,bash_functions_share}

INIT_DIR="${HOME}/.bash_prefs/bash_prefs" # the directory of the dirname

# this line, e.g.,  protects the functionality of rsync by only turning on the below if the shell is in interactive mode 
# In particular, rsync fails if things are echo-ed to the terminal
[[ "$-" != *i* ]] && return

# bash welcome
if [ -e "${INIT_DIR}/local/bash_welcome_local" ]; then
   cat ${INIT_DIR}/local/bash_welcome_local
fi

#--------------------LOCAL------------------------------
# aliases local
if [ -e "${INIT_DIR}/local/bash_aliases_local" ]; then
  source "${INIT_DIR}/local/bash_aliases_local"
  echo "bash_aliases_local loaded"
fi

# settings local
if [ -e "${INIT_DIR}/local/bash_settings_local" ]; then
  source "${INIT_DIR}/local/bash_settings_local"
  echo "bash_settings_local loaded"
fi

# paths local
if [ -e "${INIT_DIR}/local/bash_paths_local" ]; then
   source "${INIT_DIR}/local/bash_paths_local"
   echo "bash_paths_local loaded"
fi

#---------------SHARE-----------------------------
# aliases
if [ -e "${INIT_DIR}/share/bash_aliases_share" ]; then
  source "${INIT_DIR}/share/bash_aliases_share"
  echo "bash_aliases_share loaded"
fi

# settings share
if [ -e "${INIT_DIR}/share/bash_settings_share" ]; then
  source "${INIT_DIR}/share/bash_settings_share"
  echo "bash_settings_share loaded"
fi

# functions share
if [ -e "${INIT_DIR}/share/bash_functions_share" ]; then
   source "${INIT_DIR}/share/bash_functions_share"
   echo "bash_functions_share loaded"
fi

#---------------Initial Run-----------------------------
if [ -e "${INIT_DIR}/local/bash_inirun_local" ]; then
   echo "-----------------------"
   echo "Running ini run - local"
   sh ${INIT_DIR}/local/bash_inirun_local
   echo "-----------------------"
fi

