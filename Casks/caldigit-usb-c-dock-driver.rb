cask 'caldigit-usb-c-dock-driver' do
  version :latest
  sha256 :no_check

  url 'http://www.caldigit.com/support/USB-C-Dock-mac.zip'
  name 'CalDigit USB-C Dock Driver'
  homepage 'http://www.caldigit.com/usb-3-1-usb-c-dock/faq.asp'

  pkg 'USB-C-Dock-mac/CalDigit-USB-C-Dock-Ethernet-Driver.pkg'
  pkg 'USB-C-Dock-mac/CalDigit-USB-Hub-Support-Driver.pkg'

  uninstall script:  'USB-C-Dock-mac/UnInstaller/CalDigit-USBC-Dock-Ethernet-Uninstaller',
            kext:    'com.cypress.driver.CYUSB3610',
            pkgutil: [
                       'com.CalDigit.caldigitUsbcDockEthernetHubSupportDrivers.CalDigitUSBHubSupport.pkg',
                       'com.CalDigit.caldigitUsbcDockEthernetHubSupportDrivers.postflight.pkg',
                       'com.CalDigit.caldigitUsbcDockEthernetHubSupportDrivers.preflight.pkg',
                       'com.CalDigit.caldigitUsbcDockHubSupportDriver.CalDigitUSBHubSupport.pkg',
                       'com.CalDigit.caldigitUsbcDockHubSupportDriver.postflight.pkg',
                       'com.CalDigit.caldigitUsbcDockHubSupportDriver.preflight.pkg',
                     ]
end
