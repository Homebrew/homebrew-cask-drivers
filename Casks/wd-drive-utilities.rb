cask "wd-drive-utilities" do
  version "2.1.1.127"
  sha256 "6c1fdf4800f5c2db9da42805a0834a6a5cbf7566b42e10ec9e2b05e9ae174e6c"

  url "https://downloads.wdc.com/wdapp/WD_Utilities_Standalone_Installer_Mac_#{version.dots_to_underscores}.zip"
  name "WD Drive Utilities"
  desc "Manage WD drives"
  homepage "https://support.wdc.com/downloads.aspx?p=157"

  livecheck do
    url :homepage
    regex(%r{href=.*?/WD_Utilities_Standalone_Installer_Mac_(\d+(?:_\d+)*)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  installer script: {
    executable: "#{staged_path}/WD Drive Utilities Installer.app/Contents/MacOS/WD Drive Utilities Installer",
    sudo:	      true,
  }

  uninstall launchctl: "com.wdc.WDPrivilegedHelper",
            quit:      [
              "com.wdc.branded.driveutility",
              "com.westerndigital.WDDriveUtilityHelper",
              "com.westerndigital.WDDriveUtilityInstaller",
            ],
            script:    [
              { executable: "/Applications/WD Drive Utilities Uninstaller.app/Contents/MacOS/WD Drive Utilities Installer",
                sudo:       true },
            ]

  zap trash: [
    "/Library/LaunchDaemons/com.wdc.WDPrivilegedHelper.plist",
    "~/Library/Caches/com.apple.helpd/Generated/WD Drive Utilities Help*#{version}",
    "~/Library/Caches/com.wdc.branded.driveutility",
    "~/Library/Caches/com.westerndigital.WDDriveUtilityInstaller",
    "~/Library/Preferences/com.wdc.branded.driveutility.plist",
  ]
end
