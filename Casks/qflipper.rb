cask "qflipper" do
  version "1.0.0"
  sha256 "14ddb0e8a58a44ff7935ba2c34b1c9f04d7c2fca694df838ab4155e0fb564228"

  url "https://update.flipperzero.one/builds/qFlipper/#{version}/qFlipper-#{version}.dmg"
  name "qFlipper"
  desc "Companion app for Flipper Zero devices"
  homepage "https://update.flipperzero.one/"

  livecheck do
    url "https://update.flipperzero.one/builds/qFlipper/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  app "qFlipper.app"
  binary "#{appdir}/qFlipper.app/Contents/MacOS/qFlipper-cli"

  zap trash: [
    "~/Library/Preferences/com.flipperdevices.qFlipper.plist",
    "~/Library/Preferences/com.flipperzero-one.qFlipper.plist",
    "~/Library/Saved Application State/test.qFlipper.savedState",
  ]
end
