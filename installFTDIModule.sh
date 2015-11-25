sudo cp ftdi_sio.ko /lib/modules/$(uname -r)/kernel/drivers/usb/serial
sudo depmod -a
/bin/echo -e "\e[1;32mFTDI Driver Module Installed.\e[0m"

