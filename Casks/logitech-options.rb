cask 'logitech-options' do
  version '7.10.5'
  sha256 '23b90c5f6c232fa80b5e48e85815eb94ad873c92285f6b24066eeb28251b6660'

  url "https://www.logitech.com/pub/techsupport/options/Options_#{version}.zip"
  name 'Logitech Options'
  homepage 'https://support.logitech.com/en_us/software/options'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  pkg "LogiMgr Installer #{version}.app/Contents/Resources/LogiMgr.mpkg"

  uninstall script:    {
                         executable: '/Applications/Utilities/LogiMgr Uninstaller.app/Contents/Resources/Uninstaller',
                       },
            pkgutil:   [
                         'com.logitech.manager.pkg',
                         'com.Logitech.signedKext.pkg',
                       ],
            launchctl: 'com.logitech.manager.daemon'

  caveats do
    reboot
  end
end
