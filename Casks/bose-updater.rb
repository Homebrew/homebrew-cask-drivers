cask 'bose-updater' do
  version '6.0.0.4388'
  sha256 'eaa05106bfcdbda4d8989ffa02454ace6defc5c9b2ee04a3a14dad2bd0a567d4'

  url "https://downloads.bose.com/ced/boseupdater/mac/BoseUpdater_#{version}.dmg"
  appcast 'https://btu.bose.com/data/MUV.xml'
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
    license 'https://btu.bose.com/#section=install'
  end
end
