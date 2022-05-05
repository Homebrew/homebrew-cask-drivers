cask "droidcam-obs" do
  version "1.5.0"
  sha256 "ae1ccf28b998f3cc8a7cbe63d43973cd3bc90a7abb590c6ee23cca278190090b"

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
