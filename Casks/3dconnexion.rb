cask '3dconnexion' do
  version '10-6-1_r2897,a8111ac7-d575-9772-1dc6-5c37a3a6c64c'
  sha256 '3b037438bf220ea30d2d9b4bdaf9f512e3d3a2e2f205841f85ef9a1a81b54d91'

  url "https://www.3dconnexion.com/index.php?eID=sdl&ext=tx_iccsoftware&oid=#{version.after_comma}&filename=3DxWareMac_v#{version}.dmg"
  appcast 'https://www.3dconnexion.com/service/drivers.html'
  name '3Dconnexion'
  homepage 'https://www.3dconnexion.com/'

  depends_on macos: '>= :yosemite'

  pkg 'Install 3Dconnexion software.pkg'

  uninstall pkgutil:   'com.3dconnexion.*',
            launchctl: 'com.3dconnexion.nlserverIPalias',
            quit:      'com.3dconnexion.*',
            # kext:      'com.3dconnexion.driver', # Fails to unload kext (classes have instances) when executing `brew zap`.
            script:    [
                         executable: "#{appdir}/3Dconnexion/Uninstall 3Dconnexion Driver.app/Contents/Resources/rm3dcx",
                         sudo:       true,
                       ],
            delete:    [
                         '/Applications/3Dconnexion',
                         '/Library/Extensions/3Dconnexion.kext',
                         '/Library/Frameworks/3DconnexionClient.framework',
                       ],
            rmdir:     '/Applications/3Dconnexion'

  zap trash: [
               '/Library/Application Support/3Dconnexion',
               '/Library/LaunchDaemons/com.3dconnexion.nlserverIPalias.plist',
               '/Library/PreferencePanes/3Dconnexion.prefPane',
               '~/Library/Logs/3Dconnexion',
               '~/Library/Preferences/3Dconnexion',
               '~/Library/Preferences/com.3dconnexion.*.plist',
               '~/Library/Saved Application State/com.3dconnexion.*.savedState',
             ]

  caveats do
    reboot
  end
end
