cask "ftdi-vcp-driver" do
  version "2.4.4"
  sha256 "f3343fc223f667e1dab0ecf9fd8fade525c261f120a1cd6b29f8806fa6bc4d8b"

  url "https://www.ftdichip.com/Drivers/VCP/MacOSX/FTDIUSBSerialDriver_v#{version.dots_to_underscores}.dmg"
  name "FTDI VCP Driver"
  homepage "https://www.ftdichip.com/Drivers/VCP.htm"

  pkg "FTDIUSBSerial.pkg"

  uninstall pkgutil: [
              "com.FTDI.ftdiusbserialdriverinstaller.*",
              "com.FTDI.driver.FTDIUSBSerialDriver",
            ],
            kext:    "com.FTDI.driver.FTDIUSBSerialDriver",
            delete:  "/Library/Extensions/FTDIUSBSerialDriver.kext"

  caveats do
    reboot

    <<~EOS
      If you don't want to reboot, you can load the driver using the following
      command:

        sudo /sbin/kextload -b com.FTDI.driver.FTDIUSBSerialDriver

      Once you've rebooted or loaded the driver, you can connect your FTDI
      based cable to a USB port and it will show up in /dev, usually like this:

        /dev/tty.usbserial-XXXXXXXX

      where XXXXXXXX is a random ID, based on the serial number of your FTDI
      based cable.

      NOTE: If your FTDI based cable was already connected before you installed
      the driver, you'll need to unplug the cable from the USB port and
      reconnect it for it to show up in /dev.
    EOS
  end
end
