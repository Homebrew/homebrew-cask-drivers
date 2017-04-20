cask 'silicon-labs-vcp-driver' do
  version '4.10.17'
  sha256 'd491af748e90ba0b0ffb487863cb814b15501fc2ab49f65d95246a0494af50f3'

  url 'https://www.silabs.com/documents/public/software/Mac_OSX_VCP_Driver.zip'
  appcast 'https://www.silabs.com/documents/public/software/Mac_OSX_VCP_Driver_Release_Notes.txt',
          checkpoint: 'd0d1ca8b4a0d3668c0f7a0b6c463d9c413b4721bace191f159fa6bd0fe6dec46'
  name 'Silicon Labs VCP Driver'
  name 'CP210x USB to UART Bridge VCP Driver'
  homepage 'https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers'

  container nested: 'SiLabsUSBDriverDisk.dmg'

  pkg 'Silicon Labs VCP Driver.pkg'

  uninstall pkgutil: 'com.silabs.siliconLabsVcpDriver.*'
end
