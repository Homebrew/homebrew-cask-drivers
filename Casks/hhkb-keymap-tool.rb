cask "hhkb-keymap-tool" do
  version "1.2.0"
  sha256 "19ceae98bcf1ebbb6faaa8f8c33d396d439cedd5c4e7a49e4afc086c57e76cdb"

  url "https://origin.pfultd.com/downloads/hhkb/mac/HHKBkeymapTool_#{version.no_dots}ma.dmg",
      verified: "origin.pfultd.com"
  name "HHKB Keymap Tool"
  desc "Keymap tool for Happy Hacking Keyboard Professional (Hybrid models only)"
  homepage "https://happyhackingkb.com/download/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/macOS\s*:\s*Version\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  pkg "HHKBkeymapTool_#{version.no_dots}ma.pkg"

  uninstall pkgutil: "jp.co.pfu.hhkb-keymap-tool.pkg.V#{version}",
            delete:  [
              "/Applications/hhkb-keymap-tool.app",
              "/Applications/HHKB/",
            ]

  zap trash: [
    "~/Library/Application Support/hhkb-keymap-tool",
    "~/Library/Preferences/jp.co.pfu.hhkb-keymap-tool.plist",
  ]
end
