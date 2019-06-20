cask 'garmin-fresh' do
  version '3.6.0'
  sha256 '2eb02831657e7e606f900d0d76cbb7063763670b73d62e512f389b1890c6dc5a'

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
               '~/Library/Saved Application State/com.garmin.fresh.savedState'
             ]
end
