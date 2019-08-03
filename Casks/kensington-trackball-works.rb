cask 'kensington-trackball-works' do
  version '1.5.0'
  sha256 'd9245b9bfec91d61cfedb1961a33297e0d1f68267983f56ef965e9c4a609c692'

  url "https://www.kensington.com/siteassets/software-support/trackballworks-#{version}.dmg"
  name 'Kensington TrackballWorks'
  homepage 'https://www.kensington.com/'

  pkg 'Kensington TrackballWorks.pkg'

  uninstall launchctl: [
                         'com.kensington.slimblade.agent',
                         'com.kensington.slimblade.guiagent.plist',
                       ],
            quit:      'com.kensington.trackballworks.helper',
            kext:      'com.kensington.trackballworks.driver',
            pkgutil:   'com.kensington.trackballworks.driver.installer'
end
