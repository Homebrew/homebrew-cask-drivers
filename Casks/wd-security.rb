cask 'wd-security' do
  version '2.1.1.75'
  sha256 'f62f06d5193c210e37a62cc23a22c0e7c2a673f6fe8e7bae0f85aa748d84f521'

  url "https://downloads.wdc.com/wdapp/WD_Security_Standalone_Installer_Mac_#{version.dots_to_underscores}.zip"
  appcast 'https://support.wdc.com/downloads.aspx?p=158'
  name 'WD Security'
  homepage 'https://support.wdc.com/downloads.aspx?p=158'

  installer manual: 'WD Security Installer.app'

  uninstall launchctl: 'com.wdc.WDPrivilegedHelper',
            quit:      [
                         'com.wdc.branded.security',
                         'com.westerndigital.WDSecurityHelper',
                         'com.westerndigital.WDSecurityInstaller',
                       ],
            script:    [
                         executable: '/Applications/WD Security Uninstaller.app/Contents/MacOS/WD Security Installer',
                         sudo:       true,
                       ]

  zap trash: [
               '/Library/LaunchDaemons/com.wdc.WDPrivilegedHelper.plist',
               '~/Library/Caches/com.apple.helpd/Generated/com.wdc.branded.security.help',
               '~/Library/Caches/com.wdc.branded.security',
               '~/Library/Caches/com.westerndigital.WDSecurityInstaller',
               '~/Library/Preferences/com.wdc.branded.security.plist',
             ]
end
