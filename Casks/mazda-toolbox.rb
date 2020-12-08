cask "mazda-toolbox" do
  version "2002149986,2020_08_20__12_30_00"
  sha256 "0667c08422148770650c8b7951f304073c0ba72f7a554b27d716d3b284eea489"

  url "https://azure.distrib.naviextras.com/content/!application/TOOLBOX/Agents/Mazda/OSX/#{version.after_comma}/Mazda-Toolbox.dmg",
      verified: "azure.distrib.naviextras.com/content/!application/"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.naviextras.com/to/MazdaToolboxOSX",
          must_contain: version.after_comma
  name "Mazda Toolbox"
  homepage "https://infotainment.mazdahandsfree.com/navigation-updatemymaps"

  depends_on macos: ">= :yosemite"

  app "Mazda Toolbox.app"

  uninstall signal: [
    ["KILL", "com.mazda.toolbox"],
  ]

  zap trash: [
    "~/Library/Application Support/Mazda Toolbox",
    "~/Library/Caches/Mazda Toolbox",
    "~/Library/Caches/com.mazda.toolbox",
    "~/Library/Cookies/com.mazda.toolbox.binarycookies",
    "~/Library/Logs/Mazda Toolbox",
    "~/Library/Preferences/com.mazda.toolbox.plist",
    "~/Library/Saved Application State/com.mazda.toolbox.savedState",
  ]
end
