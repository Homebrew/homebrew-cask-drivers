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
  elsif MacOS.version == :catalina
    version '5.2.1-beta.2,1433'
    sha256 '7ad66ef562f19777caa332f5c75853aa7dcf6682be3ca3a35a012104f1de1888'
  else
    version '5.2,1367'
    sha256 'dd9e5a900778c558c27994953052a7378d34e70d5163d6acf5f441d5785978f5'
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
    reboot
    license @cask.url.to_s
  end
end
