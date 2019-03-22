cask 'jabra-direct' do
  version '4.0.4381'
  sha256 'bd923b5ce38887e1fc56fbb5418f9a548932f0f9ad18e88d832b17e7e164dc90'

  # jabraxpressonlineprdstor.blob.core.windows.net/jdo was verified as official when first introduced to the cask
  url 'https://jabraxpressonlineprdstor.blob.core.windows.net/jdo/JabraDirectSetup.dmg'
  appcast 'https://www.jabra.com/Support/release-notes/release-note-jabra-direct'
  name 'Jabra Direct'
  homepage 'https://www.jabra.com/software-and-services/jabra-direct'

  pkg 'JabraDirectSetup.pkg'

  uninstall quit:       [
                          'com.github.Squirrel',
                          'com.github.electron.framework',
                          'com.jabra.Avaya3Driver',
                          'com.jabra.AvayaDriver',
                          'com.jabra.BriaDriver',
                          'com.jabra.directonline.*',
                          'com.jabra.softphoneService',
                          'nl.superalloy.oss.terminal-notifier',
                          'org.mantle.Mantle',
                          'org.reactivecocoa.ReactiveCocoa',
                        ],
            login_item: 'Jabra Direct',
            pkgutil:    'com.jabra.directonline',
            delete:     '/Applications/Jabra Direct.app'

  zap trash: [
               '~/Library/Application Support/Jabra',
               '~/Library/Application Support/Jabra Direct',
               '~/Library/Application Support/JabraSDK',
               '~/Library/Logs/Jabra Direct',
               '~/Library/Preferences/com.jabra.directonline.helper.plist',
               '~/Library/Preferences/com.jabra.directonline.plist',
               '~/Library/Preferences/com.jabra.prefsettings.plist',
               '~/Library/Saved Application State/com.jabra.directonline.savedState',
             ]
end
