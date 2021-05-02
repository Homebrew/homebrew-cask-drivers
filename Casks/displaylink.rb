cask "displaylink" do
  if MacOS.version <= :yosemite
    version "3.1.1,1252"
    sha256 "cc4e73357841463509f1430520eec04792cbfbf9a2a564ea17d5cc78774372d0"
  elsif MacOS.version <= :high_sierra
    version "4.3.1,1251"
    sha256 "d5cd6787d6c4ca6a2425984bcbab607e618e9803335455e24196e14e35657b97"
  elsif MacOS.version <= :mojave
    version "5.2.5,1636"
    sha256 "aa061f65ffb613c5138b88051f56da12825cfe217fa6ae589f7d5125981f76b7"
  else
    version "1.3,1697"
    sha256 "24c2fbb08ca119225d92a8a88accb7199ce3c50c1d78aa253effe2432ff28507"
  end

  url "https://www.displaylink.com/downloads/file?id=#{version.after_comma}",
      data:  {
        "fileId"        => version.after_comma,
        "accept_submit" => "Accept",
      },
      using: :post
  name "DisplayLink USB Graphics Software"
  desc "Drivers for DisplayLink docks, adapters and monitors"
  homepage "https://www.displaylink.com/"

  if MacOS.version <= :mojave
    pkg "DisplayLink Software Installer.pkg"
  else
    container type: :pkg
    preflight do
      # Renames the downloaded file to the correct name
      system("mv \"#{caskroom_path}/#{version}/file?id=#{version.after_comma}\" \"#{caskroom_path}/#{version}/DisplayLink Manager Graphics Connectivity #{version.before_comma}.pkg\"")
    end
    pkg "DisplayLink Manager Graphics Connectivity #{version.before_comma}.pkg"
  end

  uninstall pkgutil:   "com.displaylink.*",
            # 'kextunload -b com.displaylink.driver.DisplayLinkDriver' causes kernel panic
            # kext:      [
            #              'com.displaylink.driver.DisplayLinkDriver',
            #              'com.displaylink.dlusbncm'
            #            ],
            launchctl: [
              "73YQY62QM3.com.displaylink.DisplayLinkAPServer",
              "com.displaylink.useragent-prelogin",
              "com.displaylink.useragent",
              "com.displaylink.displaylinkmanager",
            ],
            quit:      "DisplayLinkUserAgent",
            delete:    [
              "/Applications/DisplayLink",
              "/Library/LaunchAgents/com.displaylink.useragent-prelogin.plist",
              "/Library/LaunchAgents/com.displaylink.useragent.plist",
              "/Library/LaunchDaemons/com.displaylink.displaylinkmanager.plist",
            ]

  caveats do
    reboot
    license @cask.url.to_s
  end
end
