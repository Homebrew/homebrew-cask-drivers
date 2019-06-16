cask 'silicon-labs-vcp-driver' do
  if MacOS.version <= :yosemite
    version '4.11.3'
    pkg 'Legacy MacVCP Driver/Silicon Labs VCP Driver.pkg'
  else
    version '5.1.0'
    pkg 'Silicon Labs VCP Driver.pkg'
  end

  sha256 '278ad8f1444a55ce7e86229f8ce808403fe556cf44921c1419bb96cacaf377f1'

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
