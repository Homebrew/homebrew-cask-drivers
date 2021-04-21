cask "openintelwireless-heliport" do
  version "1.4.0"
  sha256 "d397f3508fa760c7628092b6587ea8dddca14b26895381e7898c4af9608f4a1c"

  url "https://github.com/OpenIntelWireless/HeliPort/releases/download/v#{version}/HeliPort.dmg",
      verified: "github.com/OpenIntelWireless/HeliPort"
  name "OpenIntelWireless HeliPort"
  desc "Client for Intel Wi-Fi Adapter Kernel Extension"
  homepage "https://openintelwireless.github.io/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "HeliPort.app"

  uninstall quit: [
    "com.OpenIntelWireless.HeliPort",
    "com.OpenIntelWireless.HeliPort-Launcher",
    "org.cocoapods.KeychainAccess",
    "org.sparkle-project.Sparkle",
    "org.sparkle-project.Sparkle.Autoupdate",
  ]
end
