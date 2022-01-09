cask "shureplus-motiv" do
  version "1.2.1"
  sha256 "2df7508affd12e4ee7686c849ef00aa5588bb751237c4e3a922786c047db84f0"

  url "https://content-files.shure.com/Software/shure_plus_motiv_desktop/#{version.dots_to_hyphens}/MOTIV_mac_#{version}.dmg"
  name "ShurePlus MOTIV"
  desc "Additional features and controls for Shure MV7 and MV88+ microphones"
  homepage "https://www.shure.com/en-US/products/software/shure_plus_motiv_desktop"

  livecheck do
    url "https://www.shure.com/en-US/support/downloads/software-firmware-archive/shure_plus_motiv_desktop"
    strategy :page_match
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
