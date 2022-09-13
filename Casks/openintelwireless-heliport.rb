cask "openintelwireless-heliport" do
  version "1.4.1"
  sha256 "007e371247e3f494974d1f9618f43eb707830e01c417fb75142aca99b7c6cb53"

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

  zap trash: [
    "~/Library/HTTPStorages/com.OpenIntelWireless.HeliPort",
    "~/Library/Preferences/com.OpenIntelWireless.HeliPort.plist",
  ]
end
