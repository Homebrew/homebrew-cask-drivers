cask 'displaylink' do
  version '4.3,1184'
  sha256 '259cd718b65cda090e369a538ae8be8727da14e210a3702e5e133603a95736ff'

  url "http://www.displaylink.com/downloads/file?id=#{version.after_comma}",
      data:  {
               'fileId'        => version.after_comma,
               'accept_submit' => 'Accept',
             },
      using: :post
  name 'DisplayLink USB Graphics Software'
  homepage 'http://www.displaylink.com/'

  pkg 'DisplayLink Software Installer.pkg'

  uninstall pkgutil:   [
                         'com.displaylink.displaylinkdriver',
                         'com.displaylink.displaylinkdriversigned',
                         'com.displaylink.displaylinkdriverunsigned',
                       ],
            # 'kextunload -b com.displaylink.driver.DisplayLinkDriver' causes kernel panic
            # kext:      [
            #              'com.displaylink.driver.DisplayLinkDriver',
            #              'com.displaylink.dlusbncm'
            #            ],
            launchctl: [
                         'com.displaylink.useragent-prelogin',
                         'com.displaylink.useragent',
                         'com.displaylink.displaylinkmanager',
                       ],
            quit:      'DisplayLinkUserAgent',
            delete:    [
                         '/Applications/DisplayLink',
                         '/Library/LaunchAgents/com.displaylink.useragent-prelogin.plist',
                         '/Library/LaunchAgents/com.displaylink.useragent.plist',
                         '/Library/LaunchDaemons/com.displaylink.displaylinkmanager.plist',
                       ]

  caveats do
    license @cask.url.to_s
  end
end
