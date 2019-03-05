cask 'garmin-basecamp' do
  version '4.8.3'
  sha256 'abbd7ac8bf9ac6dd976f04637e1cd916795bb838a34e60115f3b5fb3c72095fc'

  url "https://download.garmin.com/software/BaseCampforMac_#{version.no_dots}.dmg"
  name 'Garmin BaseCamp'
  homepage 'https://www.garmin.com/en-US/shop/downloads/basecamp'

  depends_on macos: '>= :yosemite'

  pkg 'Install BaseCamp.pkg'

  uninstall pkgutil:   [
                         'com.Garmin.*.BaseCamp*',
                         'com.Garmin.pkg.BasecampPostflight',
                         'com.Garmin.pkg.MapInstall',
                         'com.Garmin.pkg.MapManager',
                       ]

  zap pkgutil: 'com.Garmin.*'
end
