cask 'silicon-labs-vcp-driver' do
  version '5.0.7'
  sha256 '2a91d354a1e21746f324e3edd00ac6d320758a7b0b35ac8ab331eb993548c101'

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
