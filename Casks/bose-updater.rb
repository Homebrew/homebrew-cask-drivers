cask 'bose-updater' do
  version '5.0.0.2500'
  sha256 '789807495801b6cbb6f7d838c0b743bbac41ba57400031b354c916164146ef9c'

  url "https://downloads.bose.com/ced/boseupdater/mac/BoseUpdater_#{version}.dmg"
  appcast 'http://btu.bose.com/data/MUV.xml'
  name 'Bose Device Updater'
  homepage 'https://btu.bose.com/'

  app 'Bose Updater.app'

  uninstall login_item: 'Bose Updater',
            quit:       [
                          'com.bose.BoseUpdater',
                          'org.qt-project.Qt.*',
                        ]

  zap trash: '~/Library/Preferences/com.bose.Bose Updater.plist'

  caveats do
    license 'http://btu.bose.com/#section=install'
  end
end
