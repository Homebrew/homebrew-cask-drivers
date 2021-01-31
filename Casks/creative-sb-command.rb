cask "creative-sb-command" do
  version "11.1.02.23"
  sha256 "de8795ccfd8b8f38807198de090fa1e37b331f539176abda01f0c0a808a1f604"

  url "https://download.creative.com/manualdn/Drivers/100338/khY1qddyhB/SBCMD_MAC_L#{version.dots_to_underscores}.dmg"
  name "Creative Sound Blaster Command"
  desc "Configure and personalize audio settings of Creative Sound Blaster peripherals"
  homepage "https://support.creative.com/"

  depends_on macos: ">= :sierra"

  pkg "INSTALL.pkg"

  uninstall pkgutil: [
    "com.creative.AudioDriver",
    "com.creative.Uninstaller",
    "com.creative.SBCommand",
  ],
            rmdir:   "/Applications/Creative"

  zap trash: [
    "~/Library/Application Support/Creative.SB-Command",
    "~/Library/Application Support/Creative.SB-Command.logs",
    "~/Library/Preferences/Creative.SB-Command.plist",
  ]

  caveats do
    kext
  end
end
