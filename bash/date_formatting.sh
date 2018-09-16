#!/bin/bash          

# a backup script
           
OF=/mysnapshot-$(date +%Y%m%d).tgz
tar -cZf $OF /home/bigbanana/

