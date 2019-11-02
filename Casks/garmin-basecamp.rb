cask 'garmin-basecamp' do
  if MacOS.version <= :sierra
    version '4.7.0'
    sha256 '43d2fcd3571fff70eeca2734c56e0aae0f982bc1a7019588bd55b883cc34b16c'
    url "https://download.garmin.com/software/BaseCampforMacLegacyVersion_#{version.no_dots}.dmg"
    appcast 'https://www8.garmin.com/support/download_details.jsp?id=4939'
  else
    version '4.8.6'
    sha256 '22d09430758850d9d709105dce9c3ca7b639cc7b2a6a121dfa07374da1dda757'
    url "https://download.garmin.com/software/BaseCampforMac_#{version.no_dots}.dmg"
    appcast 'https://www8.garmin.com/support/download_details.jsp?id=4449'
  end

  name 'Garmin BaseCamp'
  homepage 'https://www.garmin.com/en-US/shop/downloads/basecamp'

  depends_on macos: '>= :yosemite'

  pkg 'Install BaseCamp.pkg'

  uninstall quit:    [
                       'com.garmin.BaseCamp',
                       'com.garmin.MapInstall',
                       'com.garmin.MapManager',
                     ],
            pkgutil: [
                       'com.Garmin.*.BaseCamp*',
                       'com.Garmin.pkg.BasecampPostflight',
                       'com.Garmin.pkg.MapInstall',
                       'com.Garmin.pkg.MapManager',
                     ]

  zap trash: [
               '~/Library/Application Support/Garmin',
               '~/Library/Caches/Garmin',
               '~/Library/Caches/com.garmin.BaseCamp',
               '~/Library/Caches/com.garmin.MapInstall',
               '~/Library/Cookies/com.garmin.BaseCamp.binarycookies',
               '~/Library/Cookies/com.garmin.MapInstall.binarycookies',
               '~/Library/Logs/Garmin',
               '~/Library/Preferences/com.garmin.BaseCamp.plist',
               '~/Library/Preferences/com.garmin.MapInstall.plist',
               '~/Library/Preferences/com.garmin.MapManager.plist',
             ]
end
