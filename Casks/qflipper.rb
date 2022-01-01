cask "qflipper" do
  version "0.7.8"
  sha256 "82af8e0e5ad22ef3a6ff154d52fa1489bb5f3c5b989dbd186a6b18324c36792b"

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
