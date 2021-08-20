
#!/bin/bash

echo "showing Users from /etc/passwd with /bin/bash as the shell"

awk 'BEGIN {
    FS=":";
    print
    printf ("| \033[34m%-15s\033[0m | \033[34m%-10s\033[0m | \033[34m%-10s\033[0m | \033[34m%-35s\033[0m | \033[34m%-15s\033[0m |\n", "Username","User ID", "GroupID","Home","Shell");
    for(c=1;c<=120;c++) printf "-"; # Add Horizontal Line
    printf "\n";
}
/\/bin\/bash/ {
    	printf("| \033[33m%-15s\033[0m | %-10s | %-10s | %-35s | %-15s | \n", $1, $3, $4, $6, $7);
}
END {
for(c=0;c<120;c++) printf "-"; # Add Horizontal Line
print ""
}' /etc/passwd