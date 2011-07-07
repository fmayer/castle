EDITOR="/usr/bin/vim"
export EDITOR
SCALA_HOME="/opt/scala"
export SCALA_HOME


CHOST="x86_64-pc-linux-gnu"
export CHOST
CFLAGS="-march=core2 -mtune=generic -O2 -pipe"
export CFLAGS
CXXFLAGS="${CFLAGS}"
export CXXFLAGS

if [ -f ~/.functions ]; then
  . ~/.functions;
fi

if [ -f ~/.aliases ]; then
  . ~/.aliases;
fi

PATH=~/bin:$PATH
export PATH
