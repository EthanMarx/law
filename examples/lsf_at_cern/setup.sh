#!/usr/bin/env bash

action() {
    local base="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

    export PYTHONPATH="$base:$PYTHONPATH"
    export LAW_CONFIG_FILE="$base/law.cfg"

    export ANALYSIS_PATH="$base"
    export ANALYSIS_DATA_PATH="$ANALYSIS_PATH/data"

    source "/afs/cern.ch/user/m/mrieger/public/law/setup.sh"
    source `law completion` 
}
action
