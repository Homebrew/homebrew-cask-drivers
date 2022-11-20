cask "droidcam-obs" do
  version "1.6.0"
  sha256 "e4a697f1a7dc673cc6e03fa04c4c5d647b5bb0996746cf9a8d4857b4c1e0c431"

  url "https://github.com/dev47apps/droidcam-obs-plugin/releases/download/#{version}/DroidCamOBS_#{version}_macos.pkg",
      verified: "github.com/dev47apps/droidcam-obs-plugin/"
  name "DroidCam OBS"
  desc "Use your phone as a camera directly in OBS Studio"
  homepage "https://www.dev47apps.com/obs/"

  depends_on cask: "obs"

  pkg "DroidCamOBS_#{version}_macos.pkg"

  uninstall pkgutil: "com.dev47apps.droidcamobs",
            delete:  "/Library/Application Support/obs-studio/plugins/droidcam-obs",
            rmdir:   "/Library/Application Support/obs-studio/plugins"
end
