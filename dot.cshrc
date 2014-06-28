setenv PATH "/sbin:/usr/sbin:/usr/local/sbin:$HOME/bin:$PATH"
setenv LANG "en_US.UTF-8"
setenv LC_CTYPE "en_US.UTF-8"
setenv LC_MESSAGES "en_US.UTF-8"
setenv LC_ALL "en_US.UTF-8"
set color

setenv TERM xterm

if (`uname -s` == "SunOS") then
    setenv TERM screen
    setenv PATH "/opt/csw/bin:$PATH"
    setenv LANG "zh_TW.UTF-8"
    setenv LC_CTYPE "zh_TW.UTF-8"
    setenv LC_MESSAGES "zh_TW.UTF-8"
    setenv LC_ALL "zh_TW.UTF-8"
endif

set PICONV = `which piconv`
set SSHBIN = `which ssh`
setenv EDITOR vim
setenv LESSCHARDEF "8bcccbcc18b95.."
unalias ls
unalias grep
alias t telnet -8
alias g grep
alias u2b "$PICONV -f utf-8 -t big5"
alias b2u "$PICONV -f big5 -t utf-8"
alias s "$SSHBIN -2AC"


alias uscr "env LC_ALL=zh_TW.UTF-8 screen -r"

set prompt="%B%n@%m:[%~]$ "

alias uirssi "env LC_ALL=zh_TW.UTF-8 irssi"
