cask 'silicon-labs-vcp-driver' do
  version '5.0.3'
  sha256 '83a5082421c35bd066e04d8a2d95188f010d4d4a4f7fe9d21ec4150f1238ae74'

  url 'https://www.silabs.com/documents/public/software/Mac_OSX_VCP_Driver.zip'
  appcast 'https://www.silabs.com/documents/public/software/Mac_OSX_VCP_Driver_Release_Notes.txt',
          checkpoint: '68261b79e248aa73c5fc9dd7772853ab05b79d04766c480836f68c1f0c683509'
  name 'Silicon Labs VCP Driver'
  name 'CP210x USB to UART Bridge VCP Driver'
  homepage 'https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers'

  container nested: 'SiLabsUSBDriverDisk.dmg'

  pkg 'Silicon Labs VCP Driver.pkg'

  uninstall pkgutil: 'com.silabs.siliconLabsVcpDriver.*'
end
