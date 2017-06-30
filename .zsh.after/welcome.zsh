 echo "
    $(tput sgr0)  +      o     +              o      $(tput setaf 2)`date +"%A, %e %B %Y, %r"`
    $(tput sgr0)     +             o     +       +   $(tput setaf 2)`uname -srm`
    $(tput sgr0)  o          +                       
    $(tput sgr0)      o  +           +        +      $(tput setaf 2)Uptime            : `uptime | sed -e "s/^.* up/up/g" | sed -e 's/,.*//g'`
    $(tput sgr0) +        o     o       +        o   $(tput setaf 2)Memory Free/Total :
    $(tput sgr0)  -_-_-_-_-_-_-_,------,      o      $(tput setaf 2)Load Averages     : `uptime | sed -e 's/^.*load averages: //g'`
    $(tput sgr0)  _-_-_-_-_-_-_-|   /\_/\            $(tput setaf 2)Processes         : `ps ax | wc -l | tr -d ' '`
    $(tput sgr0)  -_-_-_-_-_-_-~|__( ^ .^)  +     +  $(tput setaf 2)Local IP          : `/sbin/ifconfig en0 | /usr/bin/grep 'inet' | sed -e 's/\n//g' |/usr/bin/cut -d ':' -f 2 | /usr/bin/cut -d ' ' -f 2 | tr -d '\n' | sed -e 's/%//'`
    $(tput sgr0)  _-_-_-_-_-_-_- \"   \" \"       +    
    $(tput sgr0)    +      o         o   +       o   
    $(tput sgr0)      o  +           +        +      
    $(tput sgr0)  o          +                       
    $(tput sgr0)     +             o     +       +   
    $(tput sgr0)  +      o     +              o      
    $(tput sgr0)
    $(tput sgr0)
    $(tput sgr0)
    $(tput sgr0)$(tput sgr0)"