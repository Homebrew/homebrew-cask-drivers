cask "silicon-labs-vcp-driver" do
  version "6.0.2"
  sha256 :no_check

  url "https://www.silabs.com/documents/public/software/Mac_OSX_VCP_Driver.zip"
  appcast "https://www.silabs.com/documents/public/release-notes/Mac_OSX_VCP_Driver_Release_Notes.txt"
  name "Silicon Labs VCP Driver"
  desc "CP210x USB to UART Bridge VCP Driver"
  homepage "https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers"

  container nested: "macOS_VCP_Driver/SiLabsUSBDriverDisk.dmg"

  app "Install CP210x VCP Driver.app/Contents/Resources/CP210xVCPDriver.app"

  postflight do
    system_command! "/Applications/CP210xVCPDriver.app/Contents/MacOS/CP210xVCPDriver", args: ["install"], sudo: true
  end

  uninstall_preflight do
    system_command "/Applications/CP210xVCPDriver.app/Contents/MacOS/CP210xVCPDriver", args: ["uninstall"], sudo: true
  end

  caveats do
    kext
  end
end
