cask 'logitech-gaming-software' do
  version '9.02.22'
  sha256 'c57c5d89015db3a572e009d4fbff47b49b61f4421bc5673ac261912ec47244aa'

  url "https://download01.logitech.com/web/ftp/pub/techsupport/gaming/LogitechSetup_#{version}.zip"
  name 'Logitech Gaming Software'
  homepage 'https://support.logitech.com/en_us/downloads'

  pkg 'LogitechGamingInstaller.app/Contents/Resources/LogiGamingSetup.mpkg'

  uninstall script:    '/Applications/Logitech/Uninstaller.app/Contents/Resources/UninstallScript.sh',
            launchctl: 'com.logitech.logiaudiod',
            pkgutil:   [
                         'com.logitech.gaming',
                         'com.logitech.lcdmanager',
                       ]

  caveats do
    reboot
  end
end
