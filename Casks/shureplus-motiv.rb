cask "shureplus-motiv" do
  version "1.0.9.26"
  sha256 "39ed1e4208c9784b84f449eaebb35996a47f9df5c570ce00fcbb23de5f9c10a7"

  url "https://d24z4d3zypmncx.cloudfront.net/Software/shureplus-motiv/ShurePlusMOTIV_Mac_#{version}.dmg",
      verified: "https://d24z4d3zypmncx.cloudfront.net/Software/shureplus-motiv/"
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
