cask 'silicon-labs-vcp-driver' do
  version '5.2.3'
  sha256 'a5d434b9c453646fd7cbc31fb3a9dd913a4d33d44deeaf9afb23a54941c27745'

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
