cask 'jabra-suite' do
  version '2.12.0'
  sha256 'ac1170fe27fddfb77d1636af5e9ac558575d325400823df0fb90dc420f843c2f'

  url "https://www.jabra.com/macsuite/#{version}/Jabra%20Suite%20for%20Mac.dmg"
  appcast 'https://www.jabra.com/macsuite/JMSVersionUpdate.xml',
          checkpoint: '7a3e91dc3a5942160cfc90e554e40066ed2451a233357c08f91e116723c0e65c'
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
