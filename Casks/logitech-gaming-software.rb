cask 'logitech-gaming-software' do
  version '9.02.17'
  sha256 'a890300a5a98bb7aaef0921745c9b6b432d6dc0a60ded77fd3191b1225ba1c65'

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
