cask 'bose-updater' do
  version '5.0.0.2488'
  sha256 '2810ae0293f12a9f2c987c350ee6b9f0d3c17e1fa0a74ff5136da402f7a5d72d'

  url "https://downloads.bose.com/ced/boseupdater/mac/BoseUpdater_#{version}.dmg"
  appcast 'https://btu.bose.com/#section=install'
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
