cask 'garmin-fresh' do
  version :latest
  sha256 :no_check

  url 'https://navistatic.garmin.com/u/garmin_fresh/mac/GARMIN_Fresh_setup.pkg'
  name 'GARMIN Fresh'
  homepage 'https://volkswagen.garmin.com/volkswagen/site/fresh'

  pkg 'GARMIN_Fresh_setup.pkg'

  uninstall quit:    'com.garmin.fresh',
            pkgutil: [
                       'com.garmin.fresh',
                       'com.navigon.fresh',
                     ]

  zap trash: [
               '~/Library/Fresh',
               '~/Library/Saved Application State/com.garmin.fresh.savedState',
             ]
end
