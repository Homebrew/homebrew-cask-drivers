cask 'silicon-labs-vcp-driver' do
  if MacOS.version <= :yosemite
    version '4.11.3'
    pkg 'Legacy MacVCP Driver/Silicon Labs VCP Driver.pkg'
  else
    version '5.0.10'
    pkg 'Silicon Labs VCP Driver.pkg'
  end

  sha256 '04b6d927a4497da4cb9853622a57b6945f4789a2e2c82aea86f860067ccdce2a'

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
