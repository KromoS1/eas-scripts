	#!/bin/bash

source ../.env;

current_datetime=$(TZ="Europe/Minsk" date +"%d/%m/%Y %H:%M")

MESSAGE="👨‍💻Пользователь *$EAS_BUILD_USERNAME* отменил сборку 🙅: 

🚀 Время отмены \\- $current_datetime

🎩 Профиль сборки \\- *$EAS_BUILD_PROFILE* 

📱 Платформа \\- *$EAS_BUILD_PLATFORM*

🏭 Идентификатор сборки \\- \`$EAS_BUILD_ID\` "

URL="https://api.telegram.org/bot${BOT_TOKEN}/sendMessage"

curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$MESSAGE" -d parse_mode=html