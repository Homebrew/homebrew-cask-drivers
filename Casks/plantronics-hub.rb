cask 'plantronics-hub' do
  version :latest
  sha256 :no_check

  url 'https://www.plantronics.com/content/dam/plantronics/software/PlantronicsHubInstaller.dmg'
  name 'Plantronics Hub'
  homepage 'https://www.plantronics.com/au/product/plantronics-hub-desktop'

  auto_updates true
  depends_on macos: '>= :yosemite'

  pkg 'Plantronics Software.pkg'

  uninstall pkgutil:   [
                         'com.plantronics.plantronicsSoftware.PlantronicsHub.pkg',
                         'com.plantronics.plantronicsSoftware.preflight.pkg',
                         'Plantronics-Inc..Plantronics-Hub',
                       ],
            launchctl: [
                         'com.PlantronicsUpdateService',
                       ]

  zap trash: [
               '~/Library/Application Support/Plantronics',
               '~/Library/Preferences/Plantronics-Inc..Plantronics-Hub.plist',
               '~/Library/Preferences/Plantronics.Plantronics-Hub-Helper.plist',
               '~/Library/Saved Application State/Plantronics-Inc..Plantronics-Hub.savedState',
             ]
end
