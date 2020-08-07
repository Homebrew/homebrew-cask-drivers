cask "mazda-toolbox" do
  version ".2002148687,2020_07_15__16_22_00"
  sha256 "0795f9a961e3dde825e0fe6254e90586e815f715b5a44c08c537a291bb869541"

  # azure.distrib.naviextras.com/content/!application/ was verified as official when first introduced to the cask
  url "https://azure.distrib.naviextras.com/content/!application/TOOLBOX/Agents/Mazda/OSX/#{version.after_comma}/Mazda-Toolbox.dmg"
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
