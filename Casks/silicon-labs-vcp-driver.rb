cask 'silicon-labs-vcp-driver' do
  version '5.0.5'
  sha256 '2c22f2441d642351091a1de8d4fda84340cbf8cc13624fedb588415610cf0248'

  url 'https://www.silabs.com/documents/public/software/Mac_OSX_VCP_Driver.zip'
  appcast 'https://www.silabs.com/documents/public/release-notes/Mac_OSX_VCP_Driver_Release_Notes.txt'
  name 'Silicon Labs VCP Driver'
  name 'CP210x USB to UART Bridge VCP Driver'
  homepage 'https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers'

  container nested: 'SiLabsUSBDriverDisk.dmg'

  pkg 'Silicon Labs VCP Driver.pkg'

  uninstall pkgutil: 'com.silabs.driver.CP210xVCPDriver',
            kext:    'com.silabs.driver.CP210xVCPDriver'
end
