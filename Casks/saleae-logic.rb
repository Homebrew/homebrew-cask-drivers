cask "saleae-logic" do
  version "2.3.25"
  sha256 "d476c80e73c8d02a2c19745d556ea9b24c89de796be7b9798c70537b21449a46"

  url "https://downloads.saleae.com/logic#{version.major}/Logic-macOS-#{version}-master.zip"
  appcast "https://ideas.saleae.com/f/changelog/"
  name "Saleae Logic2"
  desc "Signal analysis for Saleae's devices"
  homepage "https://www.saleae.com/"

  app "Logic#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Logic",
    "~/Library/Logs/Logic#{version.major}",
    "~/Library/Preferences/com.saleae.saleae.plist",
    "~/Library/Saved Application State/com.saleae.saleae.savedState",
  ]
end
