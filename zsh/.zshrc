# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

ZSH_THEME="powerlevel10k/powerlevel10k"

export ZSH="/home/alfred/.oh-my-zsh"
export GITHUB_TOKEN="171c1d7a0f6eda21dfdb3a37f0163b8925f0f416"

source ~/.oh-my-zsh/oh-my-zsh.sh


plugins=(git zsh-autosuggestions)

alias awl="AWESOME_API='http://127.0.0.1:5050' /home/alfred/git/tooling-awesome-cli-js/bin/run"
alias aw=/home/alfred/git/tooling-awesome-cli-js/bin/run
alias sshdev='ssh -J bastion.dev.aw-platform.com -o "UserKnownHostsFile /dev/null" -o "LogLevel ERROR"'
alias sshprod='ssh -J bastion.prod.aw-platform.com -o "UserKnownHostsFile /dev/null" -o "LogLevel ERROR"'
alias sshtooling='ssh -J bastion.tooling.aw-platform.com -o "UserKnownHostsFile /dev/null" -o "LogLevel ERROR"'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

PATH="/home/alfred/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/alfred/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/alfred/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/alfred/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/alfred/perl5"; export PERL_MM_OPT;
