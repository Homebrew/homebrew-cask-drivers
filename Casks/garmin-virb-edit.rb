cask 'garmin-virb-edit' do
  version '5.1.3'
  sha256 '8bd79d4efdbb641c54b2a7f6044dcd9f2fb6cefb79e5431651af85be7df3cfa2'

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
