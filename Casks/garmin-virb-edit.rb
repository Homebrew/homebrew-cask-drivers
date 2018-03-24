cask 'garmin-virb-edit' do
  version '5.3.1'
  sha256 '2f96b07bbc0d69a7d445d0ea3a24f38c1109c2ccd9794f7312ae61107aefe5c1'

  url "http://download.garmin.com/software/VIRBEditforMac_#{version.no_dots}.dmg"
  name 'Garmin VIRB Edit'
  homepage 'https://buy.garmin.com/en-US/US/p/573412'

  depends_on macos: '>= :el_capitan'

  pkg 'Install VIRB Edit.pkg'

  uninstall quit:    'com.garmin.VIRBEdit',
            pkgutil: [
                       'com.garmin.VIRBEdit',
                       'com.garmin.VirbEditPostFlight',
                     ]
end
