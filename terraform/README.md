 
  ## ssh:
  # set a secret (if you know the expected key) from ssh:
  # sudo machinectl shell ubuntu@.host /usr/bin/secret-tool store --label='test' foo bar
 echo "YourKeyringPassword" | sudo machinectl shell ubuntu@.host /usr/bin/gnome-keyring-daemon --unlock --components=secrets
# Set environment variables first
export XDG_RUNTIME_DIR=/run/user/1000
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"
# Dont do this: ssh -X or ssh -Y instead:
# export DISPLAY=:0
sudo dbus-run-session -- sh

 # check status:
  systemctl status dbus
  grdctl status
  systemctl status --user gnome-settings-daemon
  systemctl status --user gnome-keyring
# sudo dbus-run-session -- gnome-shell : Failed to configure: Unsupported session type
# dbus-run-session -- gnome-shell --headless &

# Run grdctl as the ubuntu user\
sudo -u ubuntu grdctl vnc enable
sudo -u ubuntu grdctl vnc set-auth-method password 
sudo -u ubuntu 
# Object does not exist at path ?/org/freedesktop/secrets/collection/login?
sudo -u ubuntu grdctl status
 systemctl status --user gnome-keyring
 #  Activated service 'org.freedesktop.systemd1' failed: Process org.freedesktop.systemd1 exited with status 1
# Failed to get properties: Process org.freedesktop.systemd1 exited with status 1


## still no gnome-keyring even when other user services are running






export $(dbus-launch)
export DISPLAY=:0
dbus-run-session -- gnome-shell --wayland --headless &
echo "YourKeyringPassword" | gnome-keyring-daemon --unlock --components=secrets
# /usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets

 # grdctl rdp enable
  grdctl vnc enable

# grdctl --headless rdp set-credentials "shit" "fuck"
grdctl vnc set-auth-method password 
grdctl vnc set-password fuck
# systemctl enable --user gnome-remote-desktop
# systemctl start --user gnome-remote-desktop
systemctl status --user gnome-remote-desktop
# unable to create directory '/run/user/ubuntu/dconf': Permission denied

# https://gitlab.gnome.org/GNOME/gnome-remote-desktop

# And potentially set up TLS certificates if necessary


# spotlight on mac:
# vnc://3.101.110.165:5900
# vnc://ubuntu@ec2-3-101-110-165.us-west-1.compute.amazonaws.com:5900

# 192.80.1.42/32
# 174.78.176.18/32

unable to create directory '/run/user/ubuntu/dconf': Permission denied

gnome-remote-desktop.service: Current command vanished from the unit file, execution of the command list won't be resumed.
Jan 07 02:24:33 ip-10-0-3-124 systemd[1]: gnome-remote-desktop.service: start operation timed out. Terminating.
Jan 07 02:24:33 ip-10-0-3-124 systemd[1]: gnome-remote-desktop.service: Failed with result 'timeout'.

# https://www.youtube.com/watch?v=ODhGNe0s4lI
display mgr is not running
vnc or rdp server not installed or running