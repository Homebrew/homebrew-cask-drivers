cask 'garmin-virb-edit' do
  version '5.1.2'
  sha256 'f0c0fc9024fd96fab0596deb0ec3085d2a0e0d1e074eaf2835852181e41bb2c0'

  url "http://download.garmin.com/software/VIRBEditforMac_#{version.no_dots}.dmg"
  name 'Garmin VIRB Edit'
  homepage 'https://buy.garmin.com/en-US/US/p/573412'

  depends_on macos: '>= :yosemite'

  pkg 'Install VIRB Edit.pkg'

  uninstall quit:    'com.garmin.VIRBEdit',
            pkgutil: [
                       'com.garmin.VIRBEdit',
                       'com.garmin.VirbEditPostFlight',
                     ]
end
