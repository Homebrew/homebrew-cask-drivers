cask 'navdy' do
  version '1.0.146'
  sha256 'f30f84016e435239cc2ca63a8ed5b43ec858c815310cfbfa147cea9bb4f940c4'

  url 'https://downloads.navdy.com/desktop_support/release/navdy_desktop_mac.dmg'
  name 'Navdy'
  homepage 'https://navdy.zendesk.com/hc/en-us/articles/115001590703'

  app 'Navdy.app'

  zap delete: [
                '~/Library/Application Support/Navdy',
                '~/Library/Preferences/com.navdy.application.desktop.plist',
              ],
      trash:  [
                '~/Library/Saved Application State/com.navdy.application.desktop.savedState',
              ]
end
