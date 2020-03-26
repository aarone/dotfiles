# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending


# Add brew's zsh site-functions
# http://askql.wordpress.com/2011/01/11/zsh-writing-own-completion/

brew_completions=('_aws' '_go' )
for completion in $brew_completions; do
    file_to_source=$(brew --prefix)/share/zsh/site-functions/$completion
    if [ -f $file_to_source ]; then
        source $file_to_source
    fi
done

AWS_COMPLETIONS=$(brew --prefix)/share/zsh/site-functions/aws_zsh_completer.sh
if [ -f $AWS_COMPLETIONS ];
then
    source $AWS_COMPLETIONS;
fi

fpath=(~/.zsh/completion $fpath $(brew --prefix)/share/zsh/site-functions)
autoload -Uz compinit && compinit -i
