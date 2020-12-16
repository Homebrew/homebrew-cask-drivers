# https://downloads.saleae.com/logic2/Logic-macOS-2.3.15-master.zip
cask "saleae-logic2" do
  version "2.3.15"
  sha256 "096ebb2c411fdcde5229d17d190f466b1dc767b281063a6fc6e9a2872920f12d"

  url "https://downloads.saleae.com/logic2/Logic-macOS-#{version}-master.zip"
  appcast "https://ideas.saleae.com/f/changelog/"
  name "Saleae Logic2"
  desc "Debug hardware like the pros"
  homepage "https://www.saleae.com/"

  app "Logic2.app"

  uninstall quit: "com.saleae.Logic"

  zap trash: [
    "~/Library/Application Support/Logic",
    "~/Library/Logs/Logic2",
    "~/Library/Preferences/Saleae",
    "~/Library/Saved Application State/com.saleae.Logic.savedState",
  ]
end
