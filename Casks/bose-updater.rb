cask 'bose-updater' do
  version '6.0.0.4454'
  sha256 '4b19a953bb3d407f65e7c58fca8e53b9b087d7d38fd0e634f0dbd93003352efb'

  url "https://downloads.bose.com/ced/boseupdater/mac/BoseUpdater_#{version}.dmg"
  appcast 'https://btu.bose.com/data/MUV.xml'
  name 'Bose Device Updater'
  homepage 'https://btu.bose.com/'

  app 'Bose Updater.app'

  uninstall quit: [
                    'com.bose.BoseUpdater',
                    'org.qt-project.Qt.*',
                  ]

  zap trash: '~/Library/Preferences/com.bose.Bose Updater.plist'

  caveats do
    license 'https://btu.bose.com/#section=install'
  end
end
