cask "mazda-toolbox" do
  version "2022.12.21.17.29"
  sha256 "3a0bdef7ecfc5b208746a6660aeb658f2a4acf39c77e214a9464d5cf5cd18dfe"

  url "https://download.naviextras.com/content/!application/TOOLBOX/Agents/Mazda/#{version.dots_to_underscores}/Mazda-Toolbox.dmg",
      verified: "download.naviextras.com/content/!application/TOOLBOX/Agents/Mazda/"
  name "Mazda Toolbox"
  desc "Map Updater for Mazda"
  homepage "https://infotainment.mazdahandsfree.com/navigation-updatemymaps"

  livecheck do
    url "https://www.naviextras.com/to/MazdaToolboxOSX"
    strategy :header_match do |headers|
      headers["location"][%r{v?(\d+(?:_\d+)+)/Mazda[._-]Toolbox\.dmg}i, 1].tr("_", ".")
    end
  end

  app "Mazda Toolbox.app"

  uninstall signal: ["KILL", "com.mazda.toolbox"]

  zap trash: [
    "~/Library/Application Support/Mazda Toolbox",
    "~/Library/Caches/com.mazda.toolbox",
    "~/Library/Caches/Mazda Toolbox",
    "~/Library/Cookies/com.mazda.toolbox.binarycookies",
    "~/Library/Logs/Mazda Toolbox",
    "~/Library/Preferences/com.mazda.toolbox.plist",
    "~/Library/Saved Application State/com.mazda.toolbox.savedState",
  ]
end
