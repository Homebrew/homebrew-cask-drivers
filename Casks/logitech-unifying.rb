cask 'logitech-unifying' do
  if MacOS.version <= :mavericks
    version '1.2.315'
    sha256 '9106336cc0f640d17a8352a2376652f6e16fd02be584f9c33d41999dfc00d0a8'
  elsif MacOS.version <= :yosemite
    version '1.2.359'
    sha256 'e6fd9c1b536033f3346b32c391bd58587ea9f549cab7839cf8a1dbc62a739825'
  else
    version '1.3.375'
    sha256 '915116757a33d3d9c5be706d12718824b4082b3e495f2a77a3ffc70db5956666'
  end

  url "https://www.logitech.com/pub/controldevices/unifying/unifying#{version}_mac.zip"
  appcast 'https://support.logitech.com/en_us/software/unifying'
  name 'Logitech Unifying Software'
  homepage 'https://www.logitech.com/en-us/promotions/6072'

  depends_on macos: [
                      :mountain_lion,
                      :mavericks,
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
