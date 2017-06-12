cask 'jabra-suite' do
  version '2.10.0'
  sha256 '588cab855456224a0473462e7836f5eb7a2dea46d4a00c136ed25a7edddfe04a'

  url "https://www.jabra.com/macsuite/#{version}/Jabra%20Suite%20for%20Mac_#{version.major_minor}.dmg"
  appcast 'https://www.jabra.com/macsuite/JMSVersionUpdate.xml',
          checkpoint: '3eea6cf2986518414c236f7c8915fd595e3e9d2a6da05a44113bf628675bad5f'
  name 'Jabra Suite for Mac'
  homepage 'https://www.jabra.com/software-and-services/jabra-suite-for-mac'

  pkg 'Jabra Suite for Mac.pkg'

  uninstall pkgutil:   [
                         'com.jabra.firmwareapp',
                         'com.jabra.kext',
                         'com.jabra.appservice',
                         'com.jabra.menubar',
                         'com.jabra.avaya',
                         'com.jabra.avaya3',
                         'com.jabra.bria',
                         'com.jabra.skype',
                         'com.jabra.sametime',
                         'com.jabra.plugin',
                         'com.jabra.preferencepane',
                       ],
            kext:      [
                         'com.jabra.usbdevice',
                       ],
            quit:      [
                         'com.jabra.AvayaDriver',
                         'com.yourcompany.Jabra-Sametime-Integration',
                         'com.jabra.BriaDriver',
                         'GN.Jabra menu bar item',
                         'com.jabra.SkypeDriver',
                         'jabra.com.macsuite.Jabra-App-Service',
                         'com.jabra.Avaya3Driver',
                       ],
            launchctl: [
                         'com.jabra.AvayaDriver',
                         'com.yourcompany.Jabra-Sametime-Integration',
                         'com.jabra.BriaDriver',
                         'GN.Jabra menu bar item',
                         'com.jabra.SkypeDriver',
                         'jabra.com.macsuite.Jabra-App-Service',
                         'com.jabra.Avaya3Driver',
                       ],
            delete:    [
                         '~/Library/Application Support/Jabra/*.log',
                         '/System/Library/Extensions/JabraUSB.kext',
                         '/Library/LaunchAgents/com.jabra.bria.plist',
                         '/Library/LaunchAgents/com.jabra.avaya3.plist',
                         '/Library/LaunchAgents/com.jabra.skype.plist',
                         '/Library/LaunchAgents/com.jabra.avaya.plist',
                         '/Library/LaunchAgents/com.jabra.sametime.plist',
                         '/Library/LaunchAgents/com.jabra.appservice.plist',
                       ],
            rmdir:     [
                         '~/Library/Application Support/Jabra',
                         '/Library/Application Support/Jabra',
                       ]
end
