cask 'logitech-unifying' do
  version '1.3.375'
  sha256 '915116757a33d3d9c5be706d12718824b4082b3e495f2a77a3ffc70db5956666'

  url "https://www.logitech.com/pub/controldevices/unifying/unifying#{version}_mac.zip"
  name 'Logitech Unifying Software'
  homepage 'https://www.logitech.com/en-us/promotions/6072'

  pkg 'Unifying Installer.app/Contents/Resources/Logitech Unifying Signed.mpkg'

  uninstall pkgutil: [
                       'com.Logitech.Unifying Software.pkg',
                       'com.Logitech.Updater.pkg',
                     ],
            delete:  '/Applications/Utilities/Logitech Unifying Software.app',
            quit:    'com.logitech.unifying.assistant'
end
