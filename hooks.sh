#!/bin/sh
echo "Greetings from pre-sync script!"
date >> /home/sybase/prepost_sync.txt
echo hello from pre-sync >> /home/sybase/prepost_sync.txt

#!/bin/sh
echo "Greetings from post-sync script!"
date >> /home/sybase/prepost_sync.txt
echo hello from post-sync >> /home/sybase/prepost_sync.txt
