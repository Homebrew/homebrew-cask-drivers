cask 'silicon-labs-vcp-driver' do
  version '4.11.1'
  sha256 '714e8721db167741de966a6672746ed3858a1cbcdf89d4177ce1ebc86f7fa1af'

  url 'https://www.silabs.com/documents/public/software/Mac_OSX_VCP_Driver.zip'
  appcast 'https://www.silabs.com/documents/public/software/Mac_OSX_VCP_Driver_Release_Notes.txt',
          checkpoint: '31e39181562c8a62b2cbf17bb0b64d40d3623bafd52d12fa527ba100997dac65'
  name 'Silicon Labs VCP Driver'
  name 'CP210x USB to UART Bridge VCP Driver'
  homepage 'https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers'

  container nested: 'SiLabsUSBDriverDisk.dmg'

  pkg 'Silicon Labs VCP Driver.pkg'

  uninstall pkgutil: 'com.silabs.siliconLabsVcpDriver.*'
end
