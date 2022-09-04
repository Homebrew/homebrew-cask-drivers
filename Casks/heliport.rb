cask "heliport" do
  version "1.4.1"
  sha256 "007e371247e3f494974d1f9618f43eb707830e01c417fb75142aca99b7c6cb53"

  url "https://github.com/OpenIntelWireless/HeliPort/releases/download/v#{version}/HeliPort.dmg",
      verified: "https://github.com/OpenIntelWireless/HeliPort"
  name "HeliPort"
  desc "Intel Wi-Fi Client for itlwm"
  homepage "https://openintelwireless.github.io/HeliPort/"

  app "HeliPort.app"

  zap trash: [
    "~/Library/HTTPStorages/com.OpenIntelWireless.HeliPort",
    "~/Library/Preferences/com.OpenIntelWireless.HeliPort.plist",
  ]

  caveats <<~EOS
    #{token} depends on itlwm kernel extension. You may install it with:
    brew install itlwm
    or better, manually inject it with an bootloader:
    https://github.com/OpenIntelWireless/itlwm/releases
  EOS
end
