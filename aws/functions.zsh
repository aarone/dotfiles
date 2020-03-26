function extract-cwl-log-lines() {
    jq -r '.results[][] | select(.field=="@message") | .value'
}
