cask '3dconnexion' do
  version '10-6-0_r2876,dac9287b-1f2a-859f-1428-5bd9fb06fe4a'
  sha256 '8060b6fbad9a3f1fe4e3c693e708f875c5cce3159948423ce414bda56434c9b3'

  url "https://www.3dconnexion.com/index.php?eID=sdl&ext=tx_iccsoftware&oid=#{version.after_comma}&filename=3DxWareMac_v#{version}.dmg"
  appcast 'https://www.3dconnexion.com/service/drivers.html'
  name '3Dconnexion'
  homepage 'https://www.3dconnexion.com/'

  pkg 'Install 3Dconnexion software.pkg'

  uninstall script:    [
                         executable: "#{appdir}/3Dconnexion/Uninstall 3Dconnexion Driver.app/Contents/Resources/rm3dcx",
                         sudo:       true,
                       ]
  #uninstall #pkgutil:   'com.3dconnexion.*',
            #launchctl: 'com.3dconnexion.nlserverIPalias',
            #quit:      'com.3dconnexion.*',
            #signal: [
                      #['TERM', 'com.3dconnexion.driver'],
                      #['QUIT', 'com.3dconnexion.driver'],
                      #['INT',  'com.3dconnexion.driver'],
                      #['HUP',  'com.3dconnexion.driver'],
                      #['KILL', 'com.3dconnexion.driver'],
                    #],
            #kext:      'com.3dconnexion.driver', # TODO: (kernel) Can't unload kext com.3dconnexion.driver; classes have instances:
            # exists: /Applications/3Dconnexion/Uninstall\ 3Dconnexion\ Driver.app/Contents/Resources/rm3dcx
            #executable: "#{appdir}/3Dconnexion/Uninstall 3Dconnexion Driver.app/Contents/Resources/rm3dcx",
            #,
            #delete:    [
            #             '/Applications/3Dconnexion',
            #             '/Library/Extensions/3Dconnexion.kext',
            #             '/Library/Frameworks/3DconnexionClient.framework',
            #           ],
            #rmdir:     '/Applications/3Dconnexion'

  zap trash: [
               '/Library/Application Support/3Dconnexion', # TODO: check if entire dir is removed.
               '/Library/LaunchDaemons/com.3dconnexion.nlserverIPalias.plist',
               '/Library/PreferencePanes/3Dconnexion.prefPane',
               '~/Library/Logs/3Dconnexion',
               '~/Library/Preferences/3Dconnexion',
               '~/Library/Saved Application State/com.3dconnexion.*.savedState',
             ]

  caveats do
    reboot
  end
end
