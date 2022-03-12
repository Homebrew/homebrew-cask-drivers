cask "shureplus-motiv" do
  version "1.3.0"
  sha256 "40488996154af968883ebee9ce365f7b79253281f6ca84015d7457c500f5b4a9"

  url "https://content-files.shure.com/Software/shure_plus_motiv_desktop/#{version.dots_to_hyphens}/motiv-mac-#{version}.dmg"
  name "ShurePlus MOTIV"
  desc "Additional features and controls for Shure MV7 and MV88+ microphones"
  homepage "https://www.shure.com/en-US/products/software/shure_plus_motiv_desktop"

  livecheck do
    url "https://www.shure.com/en-US/support/downloads/software-firmware-archive/shure_plus_motiv_desktop"
    regex(/<span\sclass="firmware__version">\n?\t+?(\d+(?:\.\d+)+)/i)
  end

  app "ShurePlus MOTIV.app"

  uninstall quit: "com.shure.motiv.desktop"

  zap trash: [
    "~/Library/Application Support/ShurePlus MOTIV",
    "~/Library/Logs/ShurePlus MOTIV",
    "~/Library/Saved Application State/com.shure.motiv.desktop.savedState",
  ]
end
