cask 'logitech-gaming-software' do
  version '9.00.20'
  sha256 '395c6e7d4c0d6d2ce056b71cfdcc532778cd15e181d6b6f047ae838f31c776ce'

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
