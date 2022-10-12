cask "canon-eos-webcam-utility" do
  version "1.1"
  sha256 "37b84335433ed585e477d0ab3c91ca99d1b578f138ba2d76660a270c6038be7b"

  url "https://downloads.canon.com/webcam/EOSWebcamUtility-MAC#{version}.pkg.zip"
  name "Canon EOS Webcam Utility"
  desc "Use a Canon camera as a webcam"
  homepage "https://www.usa.canon.com/cameras/eos-webcam-utility"

  livecheck do
    url :homepage
    regex(/MAC\sOFFICIAL\sRELEASE\sVERSION\sv?(\d+(?:\.\d+)+)/i)
  end

  pkg "EOSWebcamUtility-MAC#{version}.pkg"

  uninstall launchctl: [
              "com.canon.usa.EOSWebcamUtility",
              "com.canon.usa.EWCService_x86_64_nonSIMD",
            ],
            pkgutil:   "com.canon.ciis.pkg.EOSWebcamUtility",
            delete:    [
              "/Applications/EOS Webcam Utility",
              "/Library/CoreMediaIO/Plug-Ins/DAL/EOSWebcamUtility.plugin",
              "/Library/CoreMediaIO/Plug-Ins/DAL/EOSWebcamUtility.plugin",
              "/Library/LaunchAgents/com.canon.usa.EOSWebcamUtility.plist",
            ],
            rmdir:     "/Library/Frameworks/EDSDK.framework"
end
