cask 'canon-eos-utility' do
  version '3.10.30'
  sha256 '684316e1e4333a9ed7311b0cf0d9f6344054db0039cea2e5c181637bfa99d095'

  # gdlp01.c-wss.com/gds/7/0200005937/01/EU-Installset-M3.10.30.0.dmg.zip was verified as official when first introduced to the cask
  url 'http://gdlp01.c-wss.com/gds/7/0200005937/01/EU-Installset-M3.10.30.0.dmg.zip'
  name 'Canon EOS Utility'
  homepage 'https://asia.canon/en/support/0200593702/1'

  installer manual: "eum#{version}-installer.app"

  uninstall delete: [
                      '/Applications/Canon Utilities/CameraSurveyProgram',
                      '/Applications/Canon Utilities/EOS Lens Registration Tool',
                      '/Applications/Canon Utilities/EOS Utility',
                      '/Applications/Canon Utilities/EOS Web Service Registration Tool',
                      '/Library/Application Support/Canon_Inc_IC/ImageBrowser EX Shared/Camera/{A2E97706-9B71-482d-92F1-70B1D010B943}.plist',
                      '/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/Auto Update Interface Library/Uninstall_for_EOS Utility.xml',
                      '/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/Auto Update Interface Library/Uninstall_for_EOS Web Service Registration Tool.xml',
                      '/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/CameraSurveyProgram',
                      '/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/EOS Lens Registration Tool',
                      '/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/EOS Web Service Registration Tool',
                      '/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/EOS Utility',
                      '/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/EOS Utility 2',
                      '/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/EOS Utility 3',
                      '/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/EOS Utility Launcher',
                    ],
            rmdir:  [
                      '/Applications/Canon Utilities',
                      '/Library/Application Support/Canon_Inc_IC/ImageBrowser EX Shared',
                    ]

  zap trash: [
               '~/Library/Caches/com.canon.EOS-Lens-Registration-Tool',
               '~/Library/Caches/com.canon.UpdateChecker',
               '~/Library/Preferences/jp.co.canon.ic.camerasurveyprogram.plist',
               '~/Library/Preferences/com.canon.EOS Utility 2.plist',
               '~/Library/Preferences/com.canon.EOS-Utility.plist',
               '~/Library/Preferences/com.canon.EOS-Utility-3.plist',
             ]
end
