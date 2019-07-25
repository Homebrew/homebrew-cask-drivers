cask 'silicon-labs-vcp-driver' do
  if MacOS.version <= :yosemite
    version '4.11.3'
    pkg 'Legacy MacVCP Driver/Silicon Labs VCP Driver.pkg'
  else
    version '5.2.0'
    app '⁨Install CP210x VCP Driver.app⁩'
  end

  sha256 'a3feeef0088362710e66d1eaa48113bfb2286242fdbae584cb7dcdd19117a6a2'

  url 'https://www.silabs.com/documents/public/software/Mac_OSX_VCP_Driver.zip'
  appcast 'https://www.silabs.com/documents/public/release-notes/Mac_OSX_VCP_Driver_Release_Notes.txt'
  name 'Silicon Labs VCP Driver'
  name 'CP210x USB to UART Bridge VCP Driver'
  homepage 'https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers'

  container nested: 'Mac_OSX_VCP_Driver/SiLabsUSBDriverDisk.dmg'

  uninstall kext:    'com.silabs.driver.CP210xVCPDriver',
            script:  [
                       executable: "#{staged_path}/uninstaller.sh",
                       sudo:       true,
                     ],
            pkgutil: 'com.silabs.driver.CP210xVCPDriver'
end
