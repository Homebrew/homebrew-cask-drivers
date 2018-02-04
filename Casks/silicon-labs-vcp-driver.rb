cask 'silicon-labs-vcp-driver' do
  version '5.0.4'
  sha256 '83a5082421c35bd066e04d8a2d95188f010d4d4a4f7fe9d21ec4150f1238ae74'

  url 'https://www.silabs.com/documents/public/software/Mac_OSX_VCP_Driver.zip'
  appcast 'https://www.silabs.com/documents/public/release-notes/Mac_OSX_VCP_Driver_Release_Notes.txt',
          checkpoint: 'eaf4cb245bd02f830afb51dd2a367eb752d3a4a8519ffd2ee2d2c56fdadbde68'
  name 'Silicon Labs VCP Driver'
  name 'CP210x USB to UART Bridge VCP Driver'
  homepage 'https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers'

  container nested: 'SiLabsUSBDriverDisk.dmg'

  pkg 'Silicon Labs VCP Driver.pkg'

  uninstall pkgutil: 'com.silabs.siliconLabsVcpDriver.*'
end
