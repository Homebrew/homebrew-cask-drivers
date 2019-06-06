cask 'bose-updater' do
  version '6.0.0.4384'
  sha256 '69cdbe58a13b522b1419c35d4dd69056e311a61ecec5148f842bdd1fff280fd7'

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
    license 'http://btu.bose.com/#section=install'
  end
end
