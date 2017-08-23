#!/usr/bin/env bash

# This script sends a curl request to each of the components
# in order to "wake" them. Heroku puts apps to sleep when 
# they are inactive. Attempting to run a distributed trace
# will result in timeout errors if the apps are asleep.

function startup {
    echo Starting up ${1}:
    curl http://${1}.ros.9ov.uk
    echo
    echo
}

echo
echo "Prompting each component to start up..."
echo

startup sleuth-d
startup sleuth-c
startup sleuth-b
startup sleuth-a

echo "[finished]"
echo
echo "Components are hopefully now started."
echo
echo "To run a distributed trace:"
echo "    curl http://sleuth-a.ros.9ov.uk"
echo
echo "Trace information will be sent to the log of each application and aggregated to Logentries."
