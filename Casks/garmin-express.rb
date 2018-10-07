cask 'garmin-express' do
  version :latest
  sha256 :no_check

  url 'https://download.garmin.com/omt/express/GarminExpress.dmg'
  name 'Garmin Express'
  homepage 'https://www.garmin.com/en-US/software/express'

  pkg 'Install Garmin Express.pkg'

  uninstall pkgutil: 'com.garmin.renu.client'
end
