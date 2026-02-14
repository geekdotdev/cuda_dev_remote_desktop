 
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










Start Over
Ref:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/install-nvidia-driver.html
https://docs.aws.amazon.com/dcv/latest/adminguide/setting-up-installing-linux-prereq.html
https://stackoverflow.com/questions/75680223/glx-offscreen-rendering-in-headless-system


sudo nvidia-xconfig --preserve-busid --enable-all-gpus
sudo systemctl isolate multi-user.target
sudo systemctl isolate graphical.target
sudo DISPLAY=:0 XAUTHORITY=$(ps aux | grep "X.*\-auth" | grep -v Xdcv | grep -v grep | sed -n 's/.*-auth \([^ ]\+\).*/\1/p') glxinfo | grep -i "opengl.*version"
# uname -m
wget https://d1uj6qtbmh3dt5.cloudfront.net/NICE-GPG-KEY
gpg --import NICE-GPG-KEY
wget https://d1uj6qtbmh3dt5.cloudfront.net/nice-dcv-ubuntu2204-x86_64.tgz
dpkg-sig --verify nice-dcv-ubuntu2204-x86_64.tgz

tar -xvf nice-dcv-ubuntu2204-x86_64.tgz  && cd nice-dcv-2025.0-20103-ubuntu2204-x86_64/sudo apt install -y ./nice-dcv-server_2025.0.20103-1_amd64.ubuntu2204.deb
sudo apt install ./nice-dcv-server_2025.0.20103-1_amd64.ubuntu2204.deb
sudo apt install ./nice-dcv-web-viewer_2025.0.20103-1_amd64.ubuntu2204.deb
sudo apt install ./nice-dcv-gl_2025.0.1112-1_amd64.ubuntu2204.deb
sudo usermod -aG video dcv
sudo apt install -y ./nice-xdcv_2025.0.688-1_amd64.ubuntu2204.deb
#? nice-dcv-gnome-shell-extension_version_all.ubuntu2204
sudo DISPLAY=:0 XAUTHORITY=$(ps aux | grep "X.*\-auth" | grep -v Xdcv | grep -v grep | sed -n 's/.*-auth \([^ ]\+\).*/\1/p') xhost | grep "SI:localuser:dcv$"

sudo systemctl isolate multi-user.target
sudo systemctl isolate graphical.target
sudo DISPLAY=:0 XAUTHORITY=$(ps aux | grep "X.*\-auth" | grep -v Xdcv | grep -v grep | sed -n 's/.*-auth \([^ ]\+\).*/\1/p') xhost | grep "SI:localuser:dcv$"

sudo DISPLAY=:0 XAUTHORITY=$(ps aux | grep "X.*\-auth" | grep -v Xdcv | grep -v grep | sed -n 's/.*-auth \([^ ]\+\).*/\1/p') xhost | grep "LOCAL:$"
sudo systemctl isolate multi-user.target
sudo dcvgladmin disable
sudo dcvgladmin enable
sudo systemctl isolate graphical.target
sudo DISPLAY=:0 XAUTHORITY=$(ps aux | grep "X.*\-auth" | grep -v Xdcv | grep -v grep | sed -n 's/.*-auth \([^ ]\+\).*/\1/p') xhost | grep "SI:localuser:dcv$"
sudo DISPLAY=:0 XAUTHORITY=$(ps aux | grep "X.*\-auth" | grep -v Xdcv | grep -v grep | sed -n 's/.*-auth \([^ ]\+\).*/\1/p') xhost | grep "LOCAL:$"

sudo systemctl enable dcvserver
sudo systemctl start dcvserver
# SSO:
# nice-dcv-gnome-shell-extension_version_all.ubuntu2204
# GPU Sharing: sudo apt install ./nice-dcv-gl_2025.0.1112-1_amd64.ubuntu2204.deb
# Test: 
