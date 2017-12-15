cask 'fitbit-connect' do
  version '2.0.2.7169-2017-10-12'
  sha256 '49dcc4a9267ff89e3958234a771837beca5f7e93f025f0fb2c3665ebf388be4c'

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
