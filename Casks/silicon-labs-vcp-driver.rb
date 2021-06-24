cask "silicon-labs-vcp-driver" do
  version "6.0.1"
  sha256 :no_check

  url "https://www.silabs.com/documents/public/software/Mac_OSX_VCP_Driver.zip"
  appcast "https://www.silabs.com/documents/public/release-notes/Mac_OSX_VCP_Driver_Release_Notes.txt"
  name "Silicon Labs VCP Driver"
  name "CP210x USB to UART Bridge VCP Driver"
  homepage "https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers"

  container nested: "macOS_VCP_Driver/SiLabsUSBDriverDisk.dmg"

  installer manual: "Install CP210x VCP Driver.app"

  uninstall script: {
    executable: "uninstaller.sh",
    sudo:       true,
  }
end
