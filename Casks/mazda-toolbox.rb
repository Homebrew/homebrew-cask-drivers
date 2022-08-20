cask "mazda-toolbox" do
  version "2022.02.10.11.36"
  sha256 "f030d9e0242a2b4685a09eabcc22d6f2334bc8380b3e7730374b08f355b9c123"

  url "https://download.naviextras.com/content/!application/TOOLBOX/Agents/Mazda/#{version.dots_to_underscores}/Mazda-Toolbox.dmg",
      verified: "download.naviextras.com/content/!application/"
  name "Mazda Toolbox"
  desc "Map Updater for Mazda"
  homepage "https://infotainment.mazdahandsfree.com/navigation-updatemymaps"

  livecheck do
    url "https://www.naviextras.com/to/MazdaToolboxOSX"
    strategy :header_match do |headers|
      headers["location"][%r{(\d+(?:_\d+)+)/Mazda[._-]Toolbox\.dmg}i, 1].tr("_", ".")
    end
  end

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
