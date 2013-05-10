#!/bin/bash

for i in 74 76 86 89 90 91 94 96 97; do
    ssh-copy-id trunde@sysnet$i.sysnet.ucsd.edu
done
