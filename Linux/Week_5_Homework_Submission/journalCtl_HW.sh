Command to add all bootlog messages priorities for alert and higher:
- journalctl -p emerg...alert

Command to check size of the system disk journal for most recent bot:
- sudo journalctl -u systemd-journald

Command to remove all archived journals except the most recent two:
- journalctl --vacuum-file=2
