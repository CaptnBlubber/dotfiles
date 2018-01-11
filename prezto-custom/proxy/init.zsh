function set_proxies () {
  if [ "$1" ]; then
    export http_proxy=$1
    export HTTP_PROXY=$http_proxy
    export https_proxy=$http_proxy
    export HTTPS_PROXY=$http_proxy
    export ftp_proxy=$http_proxy
    export FTP_PROXY=$http_proxy
    export NO_PROXY="local-delivery,local-auth"
    export no_proxy=$NO_PROXY
  else 
    echo "please specify a proxy to set"
  fi
}

function noproxy {
  unset http_proxy
  unset HTTP_PROXY
  unset https_proxy
  unset HTTPS_PROXY
  unset ftp_proxy
  unset FTP_PROXY
}

function proxy {
  if [[ -v PROXY_HOST ]]; then
    if [ "$PROXY_AUTH" = "true" ]; then
      # Get user & password
      
      if [[ ! -v PROXY_USER ]]; then
        vared -p 'Proxy User: ' -c PROXY_USER
      fi
      
      if [[ ! -v PROXY_PASS ]]; then
        echo "Password for $PROXY_USER:"
        read -s PROXY_PASS 
      fi
      
      proxy="http://$PROXY_USER:$PROXY_PASS@$PROXY_HOST"
      set_proxies $proxy
    else
      proxy="http://$PROXY_HOST"
      set_proxies $proxy
    fi
  else
    echo "Error: You must set PROXY_HOST to your proxy hostname:port in your config (e.g. .zshrc)"
    echo "You may also set PROXY_AUTH, PROXY_USER and PROXY_PASSWORD if you require authentication"
    return
  fi
}