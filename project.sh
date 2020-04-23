#!/usr/bin/bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

run() {
    (
    cd examples/browser
    yarn start --hostname="0.0.0.0" --port="8080" --log-level="fatal"
    )
}

debug() {
    (
    cd examples/browser
    yarn start --hostname="0.0.0.0" --port="8080" --log-level="debug"
    )
}
