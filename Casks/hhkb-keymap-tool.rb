cask "hhkb-keymap-tool" do
  version "1.3.0"
  sha256 "ad9bad341ebf6a189b907b0dd5ee68627d508664335ea75e0109964a25d268f9"

  url "https://origin.pfultd.com/downloads/hhkb/mac/HHKBkeymapTool_#{version.no_dots}ma.dmg",
      verified: "origin.pfultd.com"
  name "HHKB Keymap Tool"
  desc "Keymap tool for Happy Hacking Keyboard Professional (Hybrid models only)"
  homepage "https://happyhackingkb.com/download/"

  livecheck do
    url :homepage
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
