cask 'silicon-labs-vcp-driver' do
  version '5.0.6'
  sha256 'c4decacb776bab3a6c40de0c572faf0e556f3682fd0327e3d97663916a86f0ba'

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
