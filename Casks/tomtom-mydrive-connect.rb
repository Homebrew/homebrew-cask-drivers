cask 'tomtom-mydrive-connect' do
  version :latest
  sha256 :no_check

  url 'https://cdn.sa.services.tomtom.com/static/sa/Mac/TomTomMyDriveConnect.dmg'
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
               '~/Library/Caches/TomTom'
             ]
end
