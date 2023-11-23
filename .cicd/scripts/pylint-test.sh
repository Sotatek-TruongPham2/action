#!/bin/bash

source "${PIPELINE_UTILS_SCRIPT_PATH}"
show_separator "Start analyzing log file"

function analyze_log {
    # we get all info from this test -> just send log file to somewhere
    # no need to analyze anything
    result="empty"
}
wait_until_odoo_shutdown
analyze_log
