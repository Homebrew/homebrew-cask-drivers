cask "droidcam-obs" do
  version "1.6.0"
  sha256 "040e80cfe5469ae98f50206f58a218bc9efed36b11cafdc447659ed42e37988e"

  url "https://github.com/dev47apps/droidcam-obs-plugin/releases/download/1.6.0/DroidCamOBS_1.6.0_macos.pkg"
  name "DroidCam OBS"
  desc "Use your phone as a camera directly in OBS Studio"
  homepage "https://www.dev47apps.com/obs/"

  livecheck do
    url "https://www.dev47apps.com/go/DroidCamOBS.Setup.pkg"
    strategy :header_match
  end

  depends_on cask: "obs"

  pkg "DroidCamOBS_Universal_#{version}.pkg"

  uninstall pkgutil: "com.dev47apps.obsdroidcam",
            delete:  "/Library/Application Support/obs-studio/plugins/droidcam-obs",
            rmdir:   "/Library/Application Support/obs-studio/plugins"
end
