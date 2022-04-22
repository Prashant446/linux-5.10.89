VERSION="5.10.89"

# Extract
# tar xvzf linux-${VERSION}.tar.gz
# cp  config linux-${VERSION}/.config
# cd linux-${VERSION}

# $ Compile and install
# make menuconfig -j6
make -j6 && sudo make INSTALL_MOD_STRIP=1 modules_install -j6 && sudo make install -j8

# Enable kernel for boot
sudo update-initramfs -c -k ${VERSION}
sudo update-grub

