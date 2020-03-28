#!/usr/bin/bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

run() {
    (
    cd ${DIR}/examples/browser
    yarn start --hostname="0.0.0.0" --port="8080" --log-level="fatal"
    )
}

debug() {
    (
    cd ${DIR}/examples/browser
    yarn start --hostname="0.0.0.0" --port="8080" --log-level="debug"
    )
}
