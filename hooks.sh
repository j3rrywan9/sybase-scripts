# Pre-Sync

#!/bin/sh
echo "Greetings from pre-sync script!"
date >> /home/sybase/prepost_sync.txt
echo hello from pre-sync >> /home/sybase/prepost_sync.txt

# Post-Sync

#!/bin/sh
echo "Greetings from post-sync script!"
date >> /home/sybase/prepost_sync.txt
echo hello from post-sync >> /home/sybase/prepost_sync.txt

# Configure Clone

#!/bin/sh
echo "Greetings from provisioning configure clone script!"
date >> /home/sybase/provisioning.prepost.txt
echo hello from configure clone >> /home/sybase/provisioning.prepost.txt

# Pre-Refresh

#!/bin/sh
echo "Greetings from provisioning pre refresh script!"
date >> /home/sybase/provisioning.prepost.txt
echo hello from pre refresh >> /home/sybase/provisioning.prepost.txt

# Post-Refresh

#!/bin/sh
echo "Greetings from provisioning post refresh script!"
date >> /home/sybase/provisioning.prepost.txt
echo hello from post refresh >> /home/sybase/provisioning.prepost.txt

# Post-Rewind

#!/bin/sh
echo "Greetings from provisioning post rewind script!"
date >> /home/sybase/provisioning.prepost.txt
echo hello from post rewind >> /home/sybase/provisioning.prepost.txt

# Pre-Snapshot

#!/bin/sh
echo "Greetings from provisioning pre snapshot script!"
date >> /home/sybase/provisioning.prepost.txt
echo hello from pre snapshot >> /home/sybase/provisioning.prepost.txt

# Post-Snapshot

#!/bin/sh
echo "Greetings from provisioning post snapshot script!"
date >> /home/sybase/provisioning.prepost.txt
echo hello from post snapshot >> /home/sybase/provisioning.prepost.txt

