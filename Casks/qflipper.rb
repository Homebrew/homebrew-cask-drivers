cask "qflipper" do
  version "0.7.92"
  sha256 "50ffaa4f08f0bd5697ff7dc7a4737f54f30cb05aa6c74ea9e2776c6da128aa7e"

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
