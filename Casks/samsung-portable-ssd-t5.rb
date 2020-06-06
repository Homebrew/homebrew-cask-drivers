cask 'samsung-portable-ssd-t5' do
  version '1.6.7'
  sha256 'c53ea42eac82fa6c8040daa35e717712d3ac09912bb777467607fef49fff1b88'

  # Samsung site link directly to AWS S3 asset and do not provide any redirect
  # from its main domain.
  # s3.ap-northeast-2.amazonaws.com/global.semi.static/SAMSUNG_SSD_PSSD_200513 was verified as official when first introduced to the cask.
  url 'https://s3.ap-northeast-2.amazonaws.com/global.semi.static/SAMSUNG_SSD_PSSD_200513/SW/09ECE3AA2FB6B74675B9E5CD0C5F99B41D766B27C8E0055C39A2A1EAC1BAC402/SamsungPortableSSD_Setup_Mac.zip'
  name 'Samsung Portable SSD Software for T5'
  homepage 'https://www.samsung.com/semiconductor/minisite/ssd/download/portable/'

  pkg 'SamsungPortableSSD_Setup_Mac.pkg'

  uninstall early_script: {
                            executable: '/Applications/SamsungPortableSSD.app/Contents/Resources/CleanupPSSD_Mac.sh',
                            sudo:       false,
                          },
            script:       {
                            executable: '/Applications/SamsungPortableSSD.app/Contents/Resources/CleanupPSSDAdmin_Mac.sh',
                            sudo:       true,
                          },
            quit:         [
                            'com.samsung.portablessd.software',
                            'Samsung.T3-Log-In-Activator-for-Mac-app',
                            '/Applications/SamsungPortableSSD.app',
                          ],
            launchctl:    'com.samsung.portablessd.mon',
            kext:         'com.samsung.portablessd.driver',
            pkgutil:      [
                            'com.samsung.portablessd.driverpkg',
                            'com.samsung.portablessd.driverXpkg',
                            'com.samsung.portablessd.softwarepkg',
                            'com.samsung.portablessd.t3SecurityEnablerForMac',
                            'com.samsung.portablessd.t3SecurityEnablerForMac.postflight',
                            'com.samsung.portablessd.samsungPortableSsdDriver.postflight',
                            'com.samsung.portablessd.samsungPortableSsdDriver.preflight',
                            'com.samsung.portablessd.samsungPortableSsdSoftware.preflight',
                          ],
            delete:       [
                            # /Library/Extensions/SamsungPortableSSDDriverX.kext
                            # /Library/Extensions/SamsungPortableSSDDriver.kext
                            '/Library/Extensions/SamsungPortableSSDDriver*.kext',
                            # /Library/StagedExtensions/Library/Extensions/SamsungPortableSSDDriverX.kext
                            # /Library/StagedExtensions/Library/Extensions/SamsungPortableSSDDriver.kext
                            '/Library/StagedExtensions/Library/Extensions/SamsungPortableSSDDriver*.kext',
                            # /private/var/db/receipts/com.samsung.portablessd.softwarepkg.plist
                            # /private/var/db/receipts/com.samsung.portablessd.softwarepkg.bom
                            # /private/var/db/receipts/com.samsung.portablessd.driverpkg.plist
                            # /private/var/db/receipts/com.samsung.portablessd.driverXpkg.plist
                            # /private/var/db/receipts/com.samsung.portablessd.driverpkg.bom
                            # /private/var/db/receipts/com.samsung.portablessd.driverXpkg.bom
                            '/private/var/db/receipts/com.samsung.portablessd.*.*',
                          ]

  zap trash: [
               '~/Desktop/SamsungPortableSSD.app',
               '~/Library/Application Support/PortableSSD',
               '~/Library/LaunchAgents/com.samsung.portablessd.mon.plist',
               '~/Library/LaunchAgents/com.srib.pssddaemon.plist',
               '~/Library/Saved Application State/com.samsung.portablessd.*',
             ]
end
