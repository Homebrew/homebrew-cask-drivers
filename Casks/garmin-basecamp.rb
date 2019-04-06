cask 'garmin-basecamp' do
  if MacOS.version <= :sierra
    version '4.7.0'
    sha256 '43d2fcd3571fff70eeca2734c56e0aae0f982bc1a7019588bd55b883cc34b16c'
    url "http://download.garmin.com/software/BaseCampforMacLegacyVersion_#{version.no_dots}.dmg"
    appcast 'http://www8.garmin.com/support/download_details.jsp?id=4939'
  else
    version '4.8.4'
    sha256 '8d3595428caa289a15177eb483937bcb5dfd3399746ffc09c59c698c6f5d68e5'
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

  zap pkgutil: 'com.Garmin.*'
end
