alias dockerRemoveContainers='docker container prune --force'
alias dockerRemoveImages='docker rmi $(docker images -a -q)'
alias dockerStopContainers='docker stop $(docker ps -aq)'
alias dockerPrune='docker system prune --force --all --volumes'
alias dockerRemoveAll='docker stop $(docker ps -a -q); docker system prune --volumes -f; docker rmi $(docker images -a -q) -f; docker network prune -f'
alias umoUp='docker-compose -f docker-compose.yml -f docker-compose.local.monolith.linux.yml -f docker-compose.selenium.yml up'
alias umoDown='docker-compose -f docker-compose.yml -f docker-compose.local.monolith.linux.yml -f docker-compose.selenium.yml down -v'
alias umoNoLogs='docker-compose -f docker-compose.yml -f docker-compose.local.monolith.linux.yml -f docker-compose.selenium.yml up -d'
alias umoPull='docker-compose -f docker-compose.yml -f docker-compose.local.monolith.linux.yml -f docker-compose.selenium.yml pull'

alias umoUpLocal='docker-compose -f docker-compose.yml -f docker-compose.local.localhost.linux.yml up'
alias umoDownLocal='docker-compose -f docker-compose.yml -f docker-compose.local.localhost.linux.yml down -v'
alias umoNoLogsLocal='docker-compose -f docker-compose.yml -f docker-compose.local.localhost.linux.yml up -d'
alias umoPullLocal='docker-compose -f docker-compose.yml -f docker-compose.local.localhost.linux.yml pull'

alias useauctionproject-staging='aws s3 ls --profile bruceAuctionProjectStaging'
alias useauctionpay-staging='aws s3 ls --profile auctionpayStaging'

alias buildbdx='bash ~/Documents/Bidlogix/scripts/build-bdx.sh'
alias removeAuctionprojectBuildFiles='rm -rf ../Auction/\$\{docker.build.directory\}; rm -rf ../Auction/**/\$\{docker.build.directory\};rm -rf ./Auction/\$\{docker.build.directory\};rm -rf ../Auction/ta>'

alias useJava7="export JAVA_HOME='/usr/lib/jvm/java-7-openjdk-amd64'"
alias useJavaDefault="export JAVA_HOME='/usr/lib/jvm/default-java'"
alias useJava8="export JAVA_HOME='/usr/lib/jvm/java-8-openjdk-amd64'"
alias useJava17="export JAVA_HOME='/usr/lib/jvm/java-17-openjdk-amd64'"

alias myprivateip='hostname -I | awk "{print $1}"'
alias buildauctionprojectnotests='cd $GIT_HOME/auctionproject/docker && ./mvn_build_app.sh -p selenium-dev-monolith -s'
alias buildauctionprojectselenium='cd $GIT_HOME/auctionproject/docker && ./mvn_build_app.sh -p selenium-dev-monolith -i'

alias cdumo='cd ~/Documents/Bidlogix/utility-monolith-orchestration'
alias cdproject='cd ~/Documents/Bidlogix/auctionproject'
alias cdpay='cd ~/Documents/Bidlogix/auctionPay'
alias cdudp='cd ~/Documents/Bidlogix/utility-dev-proxy'

alias cataliases='cat ~/.bash_aliases'
alias vimaliases='vim ~/.bash_aliases'
alias sp='source ~/.profile && echo "~/.profile has been sourced"'
alias sba='source ~/.bash_aliases && echo "~/.bash_aliases has been sourced"'
