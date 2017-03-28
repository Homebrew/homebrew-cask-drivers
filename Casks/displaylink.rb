cask 'displaylink' do
  if MacOS.version <= :lion
    version '2.2,121'
    sha256 '5c9a97a476b5ff27811491eebb653a03c96f899562b67566c24100d8593b1daa'
  else
    version '3.0,740'
    sha256 '61f5b4060ced82a97877eceded8c400f1ecca6648fb4590dd201bfb6b3741051'
  end

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

  caveats <<-EOS.undent
    Installing this Cask means you have AGREED to the DisplayLink
    Software License Agreement at

      http://www.displaylink.com/downloads/file?id=#{version.after_comma}
  EOS
end
