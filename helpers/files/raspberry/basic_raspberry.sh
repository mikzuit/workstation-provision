# Prompt enter password and prevents from outputting to screen.
wpa_passphrase "testing" | sudo tee -a /etc/wpa_supplicant/wpa_supplicant.conf > /dev/null