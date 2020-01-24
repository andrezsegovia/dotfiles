export ZSH="/home/me/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
git
git-flow
git-flow-avh
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

export EDITOR='vim'

prompt_context() {
#  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
#  fi
}

# Dir: current working directory
# prompt_dir() {
#   prompt_segment blue $PRIMARY_FG ' %~ '
# }

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/me/workspace/sls-monorepo/projects/service-a/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/me/workspace/sls-monorepo/projects/service-a/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/me/workspace/sls-monorepo/projects/service-a/node_modules/tabtab/.completions/sls.zsh ]] && . /home/me/workspace/sls-monorepo/projects/service-a/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/me/workspace/sls-monorepo/projects/service-a/node_modules/tabtab/.completions/slss.zsh ]] && . /home/me/workspace/sls-monorepo/projects/service-a/node_modules/tabtab/.completions/slss.zsh

# Aliases
export SSH_CAD_KEY_PATH=
export EC2_DEV_IP=
export EC2_STG_IP=
export EC2_PRO_IP=
export EC2_USER=
export RDS_DEV_ENDPOINT=
export RDS_STG_ENDPOINT=
export RDS_PRO_ENDPOINT=
export MYSQL_PORT=

# Cuotas al dìa Development - SSH bastion tunel conection
alias cad-dev-ssh="ssh -i $SSH_CAD_KEY_PATH -L $MYSQL_PORT:$RDS_DEV_ENDPOINT:$MYSQL_PORT $EC2_USER@$EC2_DEV_IP"

# Cuotas al dia Staging - SSH bastion tunel conection
alias cad-stg-ssh="ssh -i $SSH_CAD_KEY_PATH -L $MYSQL_PORT:$RDS_STG_ENDPOINT:$MYSQL_PORT $EC2_USER@$EC2_STG_IP"

# Cuotas al dia Production - SSH bastion tunel conection 
alias cad-pro-ssh="ssh -i $SSH_CAD_KEY_PATH -L $MYSQL_PORT:$RDS_PRO_ENDPOINT:$MYSQL_PORT $EC2_USER@$EC2_PRO_IP"

# Copy dump from remote development server
alias copy_dev_dump="scp -i $SSH_CAD_KEY_PATH $EC2_USER@$EC2_DEV_IP:~/cuotasaldia.sql ./"

# Copy dump from remote stagign server
alias copy_stg_dump="scp -i $SSH_CAD_KEY_PATH $EC2_USER@$EC2_STG_IP:~/cuotasaldia.sql ./"

# Copy dump from remote production serveralias copy_pro_dump="scp -i $SSH_CAD_KEY_PATH $EC2_USER@$EC2_PRO_IP:Cuotasaldia.sql ./"
alias copy_pro_dump="scp -i $SSH_CAD_KEY_PATH $EC2_USER@$EC2_PRO_IP:~/cuotasaldia-pro.sql ./"
