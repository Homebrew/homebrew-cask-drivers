cask 'silicon-labs-vcp-driver' do
  version '5.0.10'
  sha256 '5ce0f339eb094fa52dfb42b97d7441cdb6883026589ecdec2bd8f311dee34b99'

  url 'https://www.silabs.com/documents/public/software/Mac_OSX_VCP_Driver.zip'
  appcast 'https://www.silabs.com/documents/public/release-notes/Mac_OSX_VCP_Driver_Release_Notes.txt'
  name 'Silicon Labs VCP Driver'
  name 'CP210x USB to UART Bridge VCP Driver'
  homepage 'https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers'

  container nested: 'Mac_OSX_VCP_Driver/SiLabsUSBDriverDisk.dmg'

  pkg 'Silicon Labs VCP Driver.pkg'

  uninstall pkgutil: 'com.silabs.driver.CP210xVCPDriver',
            kext:    'com.silabs.driver.CP210xVCPDriver'
end
