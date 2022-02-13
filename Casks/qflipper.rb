cask "qflipper" do
  version "0.8.2"
  sha256 "0bc2daf213db491eae490ca034f54138db34ec8cf17beb36113d67822fd9d272"

  url "https://update.flipperzero.one/builds/qFlipper/#{version}/qFlipper-#{version}.dmg"
  name "qFlipper"
  desc "Companion app for Flipper Zero devices"
  homepage "https://update.flipperzero.one/"

  livecheck do
    url "https://update.flipperzero.one/builds/qFlipper/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  app "qFlipper.app"

  zap trash: [
    "~/Library/Preferences/com.flipperdevices.qFlipper.plist",
    "~/Library/Preferences/com.flipperzero-one.qFlipper.plist",
    "~/Library/Saved Application State/test.qFlipper.savedState",
  ]
end
