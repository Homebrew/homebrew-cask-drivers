cask 'garmin-express' do
  version '6.8.0.0'
  sha256 '7b50dd98e218fe6c6c52240dbe907df1a5681537d3f696cbba5ba60e1e48f924'

  url 'https://download.garmin.com/omt/express/GarminExpress.dmg'
  name 'Garmin Express'
  homepage 'https://www.garmin.com/en-US/software/express'

  pkg 'Install Garmin Express.pkg'

  uninstall pkgutil: 'com.garmin.renu.client'
end
