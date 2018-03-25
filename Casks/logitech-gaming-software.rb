cask 'logitech-gaming-software' do
  version '8.96.40'
  sha256 '6b77c131d95f1fcbbbd5e5c7e0260370165e9f85c43671325f8f549432a22be6'

  url "https://download01.logitech.com/web/ftp/pub/techsupport/gaming/LogitechSetup_#{version}.zip"
  name 'Logitech Gaming Software'
  homepage 'https://support.logitech.com/en_us/downloads'

  pkg 'LogitechGamingInstaller.app/Contents/Resources/LogiGamingSetup.mpkg'

  uninstall script:  '/Applications/Logitech/Uninstaller.app/Contents/Resources/UninstallScript.sh',
            pkgutil: [
                       'com.logitech.gaming',
                       'com.logitech.lcdmanager',
                     ]

  caveats do
    reboot
  end
end
