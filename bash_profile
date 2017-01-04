# Source in additional resource files if they exist
[ -e $HOME/.this_machine ] && source $HOME/.this_machine
source $HOME/.my_aliases

LSCOLORS="Hxfxcxdxbxegedabagacad"
export LSCOLORS
export JRUBY_HOME="/Users/jed/lib/jruby-1.4.0"

export EDITOR=vim

# export PATH="/usr/local/ruby/bin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/ruby/bin:/usr/local/pgsql/bin:/usr/local/mysql/bin:$HOME/bin:$PATH"
export PGHOST=localhost

export M3_HOME=/usr/local/cellar/maven

# export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/pgsql/bin/:/usr/local/mysql/bin:/usr/local/freetds/bin:/usr/local/unixODBC/bin:$PATH"
# export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/pgsql/bin/:/usr/local/mysql/bin:${JRUBY_HOME}/bin:$PATH"

# A&D Site Generator command
alias ad_setup='ruby /Users/jed/Sites/ad_static_site_generator/setup.rb'

alias jrake='jruby -S rake'
alias ls="ls -Galh"
alias dsrm='find . -name ".DS_Store" -exec rm \{} \;'
alias ssh_recon='ssh -p 30000 git@67.23.36.36'
alias ssh_recon_fb='ssh -p 30000 git@50.56.245.94'


alias gpbs="dirs -c && pushd . && pushd /Users/jluhmann/work/Harken/harken/bespin-state && git add *.tfstate && git commit -m 'update state' && git push origin master && popd"



source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

#eval $(docker-machine env dev)



# export PATH=/Applications/SenchaSDKTools-1.2.2:$PATH
# 
# export PATH=/Applications/SenchaSDKTools-1.2.2/command:$PATH
# 
# export PATH=/Applications/SenchaSDKTools-1.2.2/jsbuilder:$PATH
# 
# export PATH=/Applications/SenchaSDKTools-1.2.2/appbuilder:$PATH
# 
# export PATH=/Applications/SenchaSDKTools-2.0.0-Developer-Preview:$PATH
# 
# export PATH=/Applications/SenchaSDKTools-2.0.0-Developer-Preview/command:$PATH
# 
# export PATH=/Applications/SenchaSDKTools-2.0.0-Developer-Preview/jsbuilder:$PATH
# 
# export PATH=/Applications/SenchaSDKTools-2.0.0-Beta:$PATH
# 
# export PATH=/Applications/SenchaSDKTools-2.0.0-Beta/command:$PATH
# 
# export PATH=/Applications/SenchaSDKTools-2.0.0-Beta/jsbuilder:$PATH
# 
# export PATH=/Applications/SenchaSDKTools-2.0.0-beta3:$PATH
# 
# export SENCHA_SDK_TOOLS_2_0_0_BETA3="/Applications/SenchaSDKTools-2.0.0-beta3"
# 
# export PATH=/Applications/Sencha/Cmd/3.0.0.181:$PATH

export SENCHA_CMD_3_0_0="/Users/jedl/bin/Sencha/Cmd/5.1.3.61"

export PATH=/Users/jedl/bin/Sencha/Cmd/4.0.1.45:$PATH

export PATH=/Users/jedl/bin/Sencha/Cmd/4.0.5.87:$PATH

export PATH=/Users/jedl/bin/Sencha/Cmd/5.0.0.160:$PATH



export PATH=/Users/jedl/bin/Sencha/Cmd/5.0.1.231:$PATH

# export PATH=/Users/jedl/bin/Sencha/Cmd/5.0.2.270:$PATH

# export PATH=/Users/jedl/bin/Sencha/Cmd/5.0.3.324:$PATH

export PATH=/Users/jedl/bin/Sencha/Cmd/5.1.3.61:$PATH
