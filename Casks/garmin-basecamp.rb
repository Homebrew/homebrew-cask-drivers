cask 'garmin-basecamp' do
  version '4.8.4'
  sha256 '8d3595428caa289a15177eb483937bcb5dfd3399746ffc09c59c698c6f5d68e5'

  url "https://download.garmin.com/software/BaseCampforMac_#{version.no_dots}.dmg"
  appcast 'https://www8.garmin.com/support/download_details.jsp?id=4449'
  name 'Garmin BaseCamp'
  homepage 'https://www.garmin.com/en-US/shop/downloads/basecamp'

  depends_on macos: '>= :yosemite'

  pkg 'Install BaseCamp.pkg'

  uninstall pkgutil: [
                       'com.Garmin.*.BaseCamp*',
                       'com.Garmin.pkg.BasecampPostflight',
                       'com.Garmin.pkg.MapInstall',
                       'com.Garmin.pkg.MapManager',
                     ]

  zap pkgutil: 'com.Garmin.*'
end
