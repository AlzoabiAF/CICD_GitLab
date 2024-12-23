#!/bin/bash

MESSAGE="Сборка проекта *$CI_PROJECT_NAME*
Ветка: *$CI_COMMIT_BRANCH*
Дата: *$CI_COMMIT_TIMESTAMP*
Раннер: *$CI_RUNNER_DESCRIPTION*
Этап: *$CI_JOB_NAME*
Статус: *$CI_JOB_STATUS*"

curl -s -X POST https://api.telegram.org/bot"$BOT_TOKEN"/sendMessage -d chat_id="$ID_USER_TG" -d text="${MESSAGE}" -d parse_mode="Markdown"