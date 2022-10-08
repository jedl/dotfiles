# Source in additional resource files if they exist
[ -e $HOME/.this_machine ] && source $HOME/.this_machine
source $HOME/.my_aliases

#LSCOLORS="Hxfxcxdxbxegedabagacad"
#export LSCOLORS

export EDITOR=vim

# export PATH="/usr/local/ruby/bin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/ruby/bin:/usr/local/pgsql/bin:/usr/local/mysql/bin:$HOME/bin:$PATH"
export PGHOST=localhost

alias ls="ls -Galh"
alias dsrm='find . -name ".DS_Store" -exec rm \{} \;'

alias gpbs="dirs -c && pushd . && pushd /Users/jluhmann/work/Harken/harken/bespin-state && git add *.tfstate && git commit -m 'update state' && git push origin master && popd"

# source /usr/local/opt/chruby/share/chruby/chruby.sh
# source /usr/local/opt/chruby/share/chruby/auto.sh

if [ -n "$BASH_VERSION" ] || [ -n "$ZSH_VERSION" ]; then
  source /usr/local/share/chruby/chruby.sh
  source /usr/local/share/chruby/auto.sh
fi

#eval $(docker-machine env dev)



export SENCHA_CMD_3_0_0="/Users/jedluhmann/bin/Sencha/Cmd/5.1.3.61"
# export PATH=/Users/jedl/bin/Sencha/Cmd/4.0.1.45:$PATH
# export PATH=/Users/jedl/bin/Sencha/Cmd/4.0.5.87:$PATH
# export PATH=/Users/jedl/bin/Sencha/Cmd/5.0.0.160:$PATH
# export PATH=/Users/jedl/bin/Sencha/Cmd/5.0.1.231:$PATH
# export PATH=/Users/jedl/bin/Sencha/Cmd/5.0.2.270:$PATH
# export PATH=/Users/jedl/bin/Sencha/Cmd/5.0.3.324:$PATH
export PATH=/Users/jedluhmann/bin/Sencha/Cmd/5.1.3.61:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
