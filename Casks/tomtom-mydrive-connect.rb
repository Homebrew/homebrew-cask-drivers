cask 'tomtom-mydrive-connect' do
  version '4.2.8.4060'
  sha256 '687a809be03ff108b5f503dc88a2875b285cb6346a86d4cdcd8c08f6328ab308'

  url "http://cdn.sa.services.tomtom.com/static/sa/versions/MyDriveConnect_mac_#{version.dots_to_underscores}.zip"
  name 'TomTom MyDrive Connect'
  homepage 'https://www.tomtom.com/mydrive-connect/'

  pkg 'MyDriveConnect.mpkg'

  uninstall quit:       'com.tomtom.mytomtomsa',
            login_item: 'TomTomMyDriveConnectHelper',
            pkgutil:    [
                          'com.tomtom.mytomtomsa.temp.pkg',
                          'com.tomtom.mytomtomsa.pkg',
                        ]

  zap trash: [
               '~/Library/Application Support/CrashReporter/TomTom MyDrive Connect_*.plist',
               '~/Library/Application Support/TomTom/HOME3',
               '~/Library/Logs/DiagnosticReports/TomTom MyDrive Connect_*.crash',
               '~/Library/Preferences/com.tomtom.mytomtomsa.plist',
               '~/Library/Saved Application State/com.tomtom.mytomtomsa.savedState',
             ],
      rmdir: [
               '~/Library/Application Support/TomTom',
               '~/Library/Caches/TomTom',
             ]
end
