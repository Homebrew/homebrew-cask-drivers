cask 'displaylink' do
  if MacOS.version >= :elcapitan
    version '4.0.0-Beta,1020'
    sha256 '63550f3357ec3696f847437aa4d34314674903657e2329e0520aa082ceaf5468'
  elsif MacOS.version == :yosemite
    version '3.1,776'
    sha256 'ac7e64fc020650842b7f4c13bbfb44f513dfd7e5b934174b4339f1440e887e85'
  elsif MacOS.version >= :mountainlion
    version '2.6,707'
    sha256 '5b1c7c5ba941a62a230316df13cdbe9be7559754e808d3480a6197c1a11a779a'
  else
    version '2.2,121'
    sha256 '5c9a97a476b5ff27811491eebb653a03c96f899562b67566c24100d8593b1daa'
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
