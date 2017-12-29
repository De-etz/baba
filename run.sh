ver="1.0"
cd ~/baba
if [ "$1" = "--help" ]; then
  echo -e "
        \033[31;47mJack Telegram Bot\033[0m

              \033[5mV $ver\033[0m



--no-outpot      Bot won't print incoming msgs
--admin-mode     Only listen to admins !
--update         Sync bot with master repo
--about          About bot
--help           Prints this msg
"

elif [ "$1" = "--about" ]; then
  echo -e "

        \033[31;47mBaba Ramdev Bot\033[0m

         By Deetz

              \033[5mV $ver\033[0m

A multi purpose Telegram bot written in MoonScript !

Website: https://github.com/De-etz.git

"
elif [ "$1" = "--Update" ]; then
  git pull
else
  echo -e "

        \033[31;47mBaba Ramdev Bot\033[0m

         By Deetz

              \033[5mV $ver\033[0m
"
  while true; do
    moon jackbot.moon "${@}"
    sleep 10s
  done
fi
