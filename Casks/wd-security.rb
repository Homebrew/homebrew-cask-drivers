cask "wd-security" do
  version "2.1.1.81"
  sha256 "d365a95e9dcad28b037fb1dbc79b3182a140f280f0d4a68c4dd00c5254e53af6"

  url "https://downloads.wdc.com/wdapp/WD_Security_Standalone_Installer_Mac_#{version.dots_to_underscores}.zip"
  name "WD Security"
  desc "Encryption software for WD drives"
  homepage "https://support.wdc.com/downloads.aspx?p=158"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      v = page[%r{href=.*?/WD_Security_Standalone_Installer_Mac_(\d+(?:_\d+)*)\.zip}i, 1]
      v.tr("_", ".")
    end
  end

  installer manual: "WD Security Installer.app"

  uninstall launchctl: "com.wdc.WDPrivilegedHelper",
            quit:      [
              "com.wdc.branded.security",
              "com.westerndigital.WDSecurityHelper",
              "com.westerndigital.WDSecurityInstaller",
            ],
            script:    [
              { executable: "/Applications/WD Security Uninstaller.app/Contents/MacOS/WD Security Installer",
                sudo:       true },
            ]

  zap trash: [
    "/Library/LaunchDaemons/com.wdc.WDPrivilegedHelper.plist",
    "~/Library/Caches/com.apple.helpd/Generated/com.wdc.branded.security.help",
    "~/Library/Caches/com.wdc.branded.security",
    "~/Library/Caches/com.westerndigital.WDSecurityInstaller",
    "~/Library/Preferences/com.wdc.branded.security.plist",
  ]
end
