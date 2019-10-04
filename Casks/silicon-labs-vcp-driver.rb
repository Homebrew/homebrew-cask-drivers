cask 'silicon-labs-vcp-driver' do
  version '5.2.2'
  sha256 '281409987896c78e053eb6f0e10644f718f14cc0e2fa628678519f9144abf476'

  url 'https://www.silabs.com/documents/public/software/Mac_OSX_VCP_Driver.zip'
  appcast 'https://www.silabs.com/documents/public/release-notes/Mac_OSX_VCP_Driver_Release_Notes.txt'
  name 'Silicon Labs VCP Driver'
  name 'CP210x USB to UART Bridge VCP Driver'
  homepage 'https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers'

  container nested: 'Mac_OSX_VCP_Driver/Mac_OSX_VCP_Driver/SiLabsUSBDriverDisk.dmg'

  installer manual: 'Install CP210x VCP Driver.app'

  uninstall script: {
                      executable: 'uninstaller.sh',
                      sudo:       true,
                    }
end
