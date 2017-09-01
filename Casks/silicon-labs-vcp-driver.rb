cask 'silicon-labs-vcp-driver' do
  version '5.0.1'
  sha256 'c9b07213e9e67cc011999bf5f5a0c4e7fd38a1ca8015d942e160e9b7cf936345'

  url 'https://www.silabs.com/documents/public/software/Mac_OSX_VCP_Driver.zip'
  appcast 'https://www.silabs.com/documents/public/software/Mac_OSX_VCP_Driver_Release_Notes.txt',
          checkpoint: '81f97ce562b2bcc93c9d23a1481e0e610a03c9afe43cd7e70c8eb34b654ea8bf'
  name 'Silicon Labs VCP Driver'
  name 'CP210x USB to UART Bridge VCP Driver'
  homepage 'https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers'

  container nested: 'SiLabsUSBDriverDisk.dmg'

  pkg 'Silicon Labs VCP Driver.pkg'

  uninstall pkgutil: 'com.silabs.siliconLabsVcpDriver.*'
end
