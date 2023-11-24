#!/bin/bash

source "${PIPELINE_UTILS_SCRIPT_PATH}"
show_separator "Start analyzing log file"

function analyze_log {
    # we get all info from this test -> just send log file to somewhere
    # no need to analyze anything
    [ -f ${LOG_FILE_OUTSIDE} ]
    if [ $? -ne 0 ]; then
        return 0
    fi

    send_file_telegram "$TELEGRAM_TOKEN" "$TELEGRAM_CHANNEL_ID" "$LOG_FILE_OUTSIDE" "🐞The pylint test result for [PR \\#$PR_NUMBER]($PR_URL)🐞"
}

wait_until_odoo_shutdown
analyze_log
