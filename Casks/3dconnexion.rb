cask '3dconnexion' do
  version '10-6-3_r2986,0b34805c-ad82-11e9-be72-5eefeba7454b'
  sha256 'a012378b39911f2be6b611a3cb34de22895df7beab1af76082d47f8558e308f2'

  url "https://www.3dconnexion.com/index.php?eID=sdl&ext=tx_iccsoftware&oid=#{version.after_comma}&filename=3DxWareMac_v#{version}.dmg"
  appcast 'https://www.3dconnexion.com/service/drivers.html'
  name '3Dconnexion'
  homepage 'https://www.3dconnexion.com/'

  depends_on macos: '>= :yosemite'

  pkg 'Install 3Dconnexion software.pkg'

  uninstall pkgutil:   'com.3dconnexion.*',
            launchctl: 'com.3dconnexion.nlserverIPalias',
            quit:      [
                         'com.3Dconnexion.3DxUpdater',
                         'com.3dconnexion.*',
                       ],
            script:    [
                         executable: "#{appdir}/3Dconnexion/Uninstall 3Dconnexion Driver.app/Contents/Resources/rm3dcx",
                         sudo:       true,
                       ],
            delete:    [
                         '/Applications/3Dconnexion',
                         '/Library/Extensions/3Dconnexion.kext',
                         '/Library/Frameworks/3DconnexionClient.framework',
                       ]

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
