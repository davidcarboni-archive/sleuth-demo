#!/usr/bin/env bash

echo "Prompting each component to start up..."
echo
curl https://sleuth-d.herokuapp.com
curl https://sleuth-c.herokuapp.com
curl https://sleuth-b.herokuapp.com
curl https://sleuth-a.herokuapp.com
echo " [finished]"
echo
echo "Components are hopefully now started."

echo "To run a distributed trace: curl https://sleuth-a.herokuapp.com"
echo "Trace information will be sent to the log of each application and aggregated to Logentries."
