cask "mazda-toolbox" do
  version "2022060400,2022_02_10_11_36"
  sha256 "f030d9e0242a2b4685a09eabcc22d6f2334bc8380b3e7730374b08f355b9c123"


  url "https://download.naviextras.com/content/!application/TOOLBOX/Agents/Mazda/#{version.csv.second}/Mazda-Toolbox.dmg",
      verified: "download.naviextras.com/content/!application/"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.naviextras.com/to/MazdaToolboxOSX",
          must_contain: version.after_comma
  name "Mazda Toolbox"
  desc "Map Updater for Mazda"
  homepage "https://infotainment.mazdahandsfree.com/navigation-updatemymaps"

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
