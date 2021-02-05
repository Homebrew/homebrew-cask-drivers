cask "saleae-logic" do
  version "2.3.18"
  sha256 "d30691a301b2574ca01fdea72da6051200135c4e499cedbac40207fda5e50755"

  url "https://downloads.saleae.com/logic2/Logic-macOS-#{version}-master.zip"
  appcast "https://ideas.saleae.com/f/changelog/"
  name "Saleae Logic2"
  desc "Signal analysis software for Saleae's  devices"
  homepage "https://www.saleae.com/"

  app "Logic2.app"

  #uninstall quit: "com.saleae.Logic"

  zap trash: [
    "~/Library/Saved Application State/com.saleae.saleae.savedState",
    "~/Library/Preferences/com.saleae.saleae.plist",
    "~/Library/Application Support/Logic",
  ]
end
