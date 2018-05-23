cask 'garmin-basecamp' do
  version '4.7.0'
  sha256 '43d2fcd3571fff70eeca2734c56e0aae0f982bc1a7019588bd55b883cc34b16c'

  url "http://download.garmin.com/software/BaseCampforMac_#{version.no_dots}.dmg"
  name 'Garmin BaseCamp'
  homepage 'https://www.garmin.com/en-US/shop/downloads/basecamp'

  depends_on macos: '>= :yosemite'

  pkg 'Install BaseCamp.pkg'

  uninstall pkgutil: 'com.garmin.BaseCamp'
end
