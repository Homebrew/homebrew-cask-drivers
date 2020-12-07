cask "canon-eos-webcam-utility" do
  version "1.0"
  sha256 "38b232bd9e91064bb291b26e831cee088c6ede2c4e3b1bb18c08280b11108304"

  url "https://downloads.canon.com/webcam/EOSWebcamUtility-MAC#{version}.pkg.zip"
  name "Canon EOS Webcam Utility"
  desc "Use a Canon camera as a webcam"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/self-help-center/eos-webcam-utility/"

  pkg "EOSWebcamUtility-MAC#{version}.pkg"

  uninstall script: {
    executable: "/Applications/EOS Webcam Utility/EOS Webcam Utility Uninstaller.app/Contents/MacOS/EOS Webcam Utility Uninstaller",
    sudo:       true,
  }
end
