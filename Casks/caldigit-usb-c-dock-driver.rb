cask 'caldigit-usb-c-dock-driver' do
  version :latest
  sha256 :no_check

  url 'http://www.caldigit.com/support/USB-C-Dock-mac.zip'
  name 'CalDigit USB-C Dock Driver'
  homepage 'http://www.caldigit.com/usb-3-1-usb-c-dock/faq.asp'

  pkg 'USB-C-Dock-mac/CalDigit-USB-C-Dock-Driver.pkg'

  uninstall pkgutil: [
                       'com.CalDigit.caldigitUsbcDockEthernetHubSupportDrivers.CalDigitUSBHubSupport.pkg',
                       'com.CalDigit.caldigitUsbcDockEthernetHubSupportDrivers.postflight.pkg',
                       'com.CalDigit.caldigitUsbcDockEthernetHubSupportDrivers.preflight.pkg',
                     ]
end
