export ANDROID_HOME="$HOME/Library/Android/sdk"

if [ "$(uname)" = "Linux" ]; then
  export ANDROID_HOME="$HOME/Android/Sdk"
fi

export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/tools/bin:$PATH"
export PATH="$ANDROID_HOME/tools:$PATH"
