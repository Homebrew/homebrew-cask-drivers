cask 'displaylink' do
  if MacOS.version <= :mavericks
    version '2.6,707'
    sha256 '5b1c7c5ba941a62a230316df13cdbe9be7559754e808d3480a6197c1a11a779a'
  elsif MacOS.version <= :yosemite
    version '3.1.1,1252'
    sha256 'cc4e73357841463509f1430520eec04792cbfbf9a2a564ea17d5cc78774372d0'
  elsif MacOS.version <= :high_sierra
    version '4.3.1,1251'
    sha256 'd5cd6787d6c4ca6a2425984bcbab607e618e9803335455e24196e14e35657b97'
  else
    version '5.1,1302'
    sha256 '3befe52b5c8c3cc0a081f831744d82106051fb665c1b9f11b2787296cc067879'
  end

  url "https://www.displaylink.com/downloads/file?id=#{version.after_comma}",
      data:  {
               'fileId'        => version.after_comma,
               'accept_submit' => 'Accept',
             },
      using: :post
  name 'DisplayLink USB Graphics Software'
  homepage 'https://www.displaylink.com/'

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
                         '73YQY62QM3.com.displaylink.DisplayLinkAPServer',
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
