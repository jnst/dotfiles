# ls color
set -gx LSCOLORS gxfxcxdxbxegedabagacad

# node.js
set -gx PATH $HOME/.nodebrew/current/bin $PATH

# android
set -gx ANDROID_HOME /Users/jnst/Library/Android/sdk 
set -gx ANDROID_SDK_ROOT /Users/jnst/Library/Android/sdk
set -gx ANDROID_NDK_HOME /Users/jnst/android-ndk-r12b
set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home
set -gx NDK_CCACHE /usr/local/bin/ccache
set -gx NDK_ROOT /Users/jnst/android-ndk-r12b

# golang
set -gx GOBIN $HOME/go/bin
set -gx PATH $GOBIN $PATH

# sdkbox
set -gx SDKBOX_HOME /Users/jnst/.sdkbox
set -gx PATH {$SDKBOX_HOME}/bin $PATH

alias history "history --show-time='%Y-%m-%d %T '"
alias ll "ls -AlhF"


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/jnst/.nodebrew/node/v6.11.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/jnst/.nodebrew/node/v6.11.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/jnst/.nodebrew/node/v6.11.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /Users/jnst/.nodebrew/node/v6.11.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish
