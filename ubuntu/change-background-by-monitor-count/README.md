# change-background-by-monitor-count

step 1

```bash
sudo bash -c 'cat <<EOF > /etc/systemd/system/monitor_check.service
[Unit]
Description=Monitor Check Script
After=network.target

[Service]
ExecStart=/home/deukyun/right_monitor.sh
Restart=always
User=username

[Install]
WantedBy=default.target
EOF'
```