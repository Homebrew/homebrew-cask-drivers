cask "displaylink" do
  if MacOS.version <= :sierra
    version "4.3.1,2021-02"
    sha256 "d5cd6787d6c4ca6a2425984bcbab607e618e9803335455e24196e14e35657b97"
    url "https://www.synaptics.com/sites/default/files/exe_files/#{version.after_comma}/DisplayLink%20USB%20Graphics%20Software%20for%20Mac%20OS%20X%20and%20macOS#{version.before_comma}-EXE.dmg"
  elsif MacOS.version <= :high_sierra
    version "5.1.1,2021-02"
    sha256 "1ac9093f8113af8c35d6f3ff5b1ae3f119a5aff0d5309d75c7a1742f159184b5"
    url "https://www.synaptics.com/sites/default/files/exe_files/#{version.after_comma}/DisplayLink%20USB%20Graphics%20Software%20for%20macOS#{version.before_comma}-EXE.dmg"
  elsif MacOS.version <= :mojave
    version "5.2.6,2021-05"
    sha256 "9f1854cd5720105d6d45c91172419c503358543e4a23d7113387aedf16a39cbb"
    url "https://www.synaptics.com/sites/default/files/exe_files/#{version.after_comma}/DisplayLink%20USB%20Graphics%20Software%20for%20macOS#{version.before_comma}-EXE.dmg"
  else
    version "1.6,2021-12"
    sha256 "ea1a5f68fbc51d2604f55be03c787c0e1f341b6d50bca71d6da8066008e319f9"
    url "https://www.synaptics.com/sites/default/files/exe_files/#{version.after_comma}/DisplayLink%20Manager%20Graphics%20Connectivity#{version.before_comma}-EXE.pkg"
  end

  name "DisplayLink USB Graphics Software"
  desc "Drivers for DisplayLink docks, adapters and monitors"
  homepage "https://www.synaptics.com/products/displaylink-graphics"

  livecheck do
    skip "No version information available"
  end

  if MacOS.version <= :mojave
    pkg "DisplayLink Software Installer.pkg"
  else
    pkg "DisplayLink Manager Graphics Connectivity#{version.before_comma}-EXE.pkg"
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
    license "https://www.synaptics.com/products/displaylink-graphics/downloads/macos-#{version.before_comma}"
  end
end
