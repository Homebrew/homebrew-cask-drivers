cask 'silicon-labs-vcp-driver' do
  version '5.0.2'
  sha256 '23bdc96d9ab4bb867b8cf3671451f8048e3c14f817b0970d76f430a87e7555f3'

  url 'https://www.silabs.com/documents/public/software/Mac_OSX_VCP_Driver.zip'
  appcast 'https://www.silabs.com/documents/public/software/Mac_OSX_VCP_Driver_Release_Notes.txt',
          checkpoint: 'a9a1e44e9fe3b8690e26e94b10bd38ea3f903c8e89239960cc1f950d2355739c'
  name 'Silicon Labs VCP Driver'
  name 'CP210x USB to UART Bridge VCP Driver'
  homepage 'https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers'

  container nested: 'SiLabsUSBDriverDisk.dmg'

  pkg 'Silicon Labs VCP Driver.pkg'

  uninstall pkgutil: 'com.silabs.siliconLabsVcpDriver.*'
end
