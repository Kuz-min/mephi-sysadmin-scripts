#!/usr/bin/env bash

INTERVAL=60				# интервал N секунд
LOG_FILE="sample_output.txt"		# имя файла журнала

while true; do
    {
        printf -- '--- %s ---\n' "$(date '+%Y-%m-%d %H:%M:%S')"
        free -h
        df -h
        uptime
        echo
    } >> "$LOG_FILE"

    sleep "$INTERVAL"
done
