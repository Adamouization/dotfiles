while (1) { ps | sort -desc cpu | select -first 40; sleep -seconds 2; cls }
