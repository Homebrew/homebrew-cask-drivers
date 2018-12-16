cask 'garmin-express' do
  version '6.10.1.0'
  sha256 '7ba0c219430c674350230757cbfcebd3958b7b7d8aafcfb244b4c7e986210860'

  url 'https://download.garmin.com/omt/express/GarminExpress.dmg'
  name 'Garmin Express'
  homepage 'https://www.garmin.com/en-US/software/express'

  pkg 'Install Garmin Express.pkg'

  uninstall pkgutil: 'com.garmin.renu.client'
end
