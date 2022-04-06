cask "droidcam-obs" do
  version "1.2.3"
  sha256 "585191c3b4df09b5d8f3ef331ea5d9fc99b30fc8dd652f1cb4ce4d6b6588b006"

  url "https://files.dev47apps.net/obs/DroidCamOBS_Universal_#{version}.pkg",
      verified: "files.dev47apps.net/obs/"
  name "DroidCam OBS"
  desc "Use your phone as a camera directly in OBS Studio"
  homepage "https://www.dev47apps.com/obs/"

  livecheck do
    url :homepage
    regex(/DroidCamOBS[._-]Universal[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on cask: "obs"

  pkg "DroidCamOBS_Universal_#{version}.pkg"

  uninstall pkgutil: "com.dev47apps.obsdroidcam",
            delete:  "/Library/Application Support/obs-studio/plugins/droidcam-obs",
            rmdir:   "/Library/Application Support/obs-studio/plugins"
end
