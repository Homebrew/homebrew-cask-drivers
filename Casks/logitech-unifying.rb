cask 'logitech-unifying' do
  if MacOS.version <= :yosemite
    version '1.2.359'
    sha256 'e6fd9c1b536033f3346b32c391bd58587ea9f549cab7839cf8a1dbc62a739825'
  else
    version '1.3.375'
    sha256 '82fe3df612e775ec8789fa821f4f62d4b3a55278276d03474580fee668ee50b7'
  end

  url "https://www.logitech.com/pub/controldevices/unifying/unifying#{version}_mac.zip"
  appcast 'https://support.logitech.com/en_us/software/unifying'
  name 'Logitech Unifying Software'
  homepage 'https://www.logitech.com/en-us/promotions/6072'

  depends_on macos: [
                      :yosemite,
                      :el_capitan,
                      :sierra,
                      :high_sierra,
                    ]

  pkg 'Unifying Installer.app/Contents/Resources/Logitech Unifying Signed.mpkg'

  uninstall pkgutil: [
                       'com.Logitech.Unifying Software.pkg',
                       'com.Logitech.Updater.pkg',
                     ],
            delete:  '/Applications/Utilities/Logitech Unifying Software.app',
            quit:    'com.logitech.unifying.assistant'

  zap trash: [
               '/Library/Application Support/Logitech.localized',
               '~/Library/Caches/com.Logitech.Updater',
               '~/Library/Preferences/com.Logitech.Updater.plist',
               '~/Library/Preferences/com.logitech.unifying.assistant.plist',
             ]
end
