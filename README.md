# ecoforest-proxy

See docker-compose.yml

## Requirements

I added some few times after machine @boot :

```
set -e

sudo systemctl daemon-reload
sudo service dhcpcd restart

NET=$(sudo wpa_cli -i wlan0 add_network)
sudo wpa_cli -i wlan0 set_network $NET ssid '"Ecoforest18233245"'
sudo wpa_cli -i wlan0 set_network $NET psk '"xxx"'
sudo wpa_cli -i wlan0 enable_network $NET
```

Configure wifi country 

sudo crontab -e
```
@reboot /home/pi/on-boot.sh 1>>/var/log/on-boot.sh 2>&1
```

Reboot
