VERSION="5.10.89"

# Extract
# tar xvzf linux-${VERSION}.tar.gz
# cp  config linux-${VERSION}/.config
# cd linux-${VERSION}

# $ Compile and install
# make menuconfig -j6
make -j8 && sudo make modules_install -j8 && sudo make install -j8

# Enable kernel for boot
sudo update-initramfs -c -k ${VERSION}
sudo update-grub

