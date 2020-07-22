cask 'tomtom-mydrive-connect' do
  version '4.2.9.4102'
  sha256 '1465ef54df1d9180734457c8fb366b0e7afa8036391a093e42d53458db2f5630'

  url "https://cdn.sa.services.tomtom.com/static/sa/versions/MyDriveConnect_mac_#{version.dots_to_underscores}.zip"
  appcast 'https://help.tomtom.com/hc/en-us/articles/360014400719-MyDrive-Connect'
  name 'TomTom MyDrive Connect'
  homepage 'https://www.tomtom.com/mydrive-connect/'

  pkg "MyDriveConnect_mac_#{version.dots_to_underscores}.mpkg"

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
