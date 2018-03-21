cask 'fitbit-connect' do
  version '2.0.2.7189-2018-02-07'
  sha256 'edb30f13a34bb83bede269014ae151e4d3f5ea0f127142b2195a3c7acf33338d'

  url "https://cache.fitbit.com/FitbitConnect/FitbitConnect-v#{version}.dmg"
  name 'Fitbit Connect'
  homepage 'https://www.fitbit.com/'

  pkg 'Install Fitbit Connect.pkg'

  uninstall script:  {
                       executable: 'Uninstall Fitbit Connect.app/Contents/Resources/uninstall.sh',
                       sudo:       true,
                     },
            pkgutil: 'com.fitbit.pkg.GalileoInstaller'
end
