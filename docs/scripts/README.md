# Scripts set up

vim ~/.bashrc

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi



mkdir -p ~/bin
cd ~/bin

find . -type f -exec chmod +x {} \;