cask 'jabra-direct' do
  version '4.0.6820'
  sha256 '97e4a91c6bd40ae94d825868d7d27fcfdbd72cc0bd5d90b4db26709a08ed1845'

  # jabraxpressonlineprdstor.blob.core.windows.net/jdo was verified as official when first introduced to the cask
  url 'https://jabraxpressonlineprdstor.blob.core.windows.net/jdo/JabraDirectSetup.dmg'
  appcast 'https://jabraexpressonlinejdo.jabra.com/jdo/jdo.json'
  name 'Jabra Direct'
  homepage 'https://www.jabra.com/software-and-services/jabra-direct'

  pkg 'JabraDirectSetup.pkg'

  uninstall quit:       [
                          'com.jabra.Avaya3Driver',
                          'com.jabra.AvayaDriver',
                          'com.jabra.BriaDriver',
                          'com.jabra.directonline',
                          'com.jabra.softphoneService',
                          'nl.superalloy.oss.terminal-notifier',
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
