cask "shureplus-motiv" do
  version "1.1.0.105"
  sha256 "a9c81b7123f1613f5ef5a76d49444ad1154d2a0cb77ce41a9d386999466a784d"

  url "https://d24z4d3zypmncx.cloudfront.net/Software/ckgifea480ba50b703lmhw1ks/ShurePlusMOTIV-mac-#{version}.zip",
      verified: "https://d24z4d3zypmncx.cloudfront.net/Software/ckgifea480ba50b703lmhw1ks/"
  name "ShurePlus MOTIV"
  desc "Additional features and controls for Shure MV7 and MV88+ microphones"
  homepage "https://www.shure.com/en-US/products/software/shure_plus_motiv_desktop"

  app "ShurePlus MOTIV.app"

  zap trash: [
    "~/Library/Application Support/shure.motiv",
    "~/Library/Logs/ShurePlus MOTIV",
    "~/Library/Logs/shure.motiv",
    "~/Library/Preferences/com.shure.motiv.desktop.plist",
    "~/Library/Saved Application State/com.shure.motiv.desktop.savedState",
  ]
end
