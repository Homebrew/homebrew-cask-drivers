cask "rapoo-mt750s" do
  version "20200817"
  sha256 "98ef8dae8c824752fceb48b3bae9b88b9d19369bce317c34046e14d97e5c43ce"

  url "http://rpd.rapoo.cn/download/RapooOptions_MT750S_#{version}.pkg",
      verified: "rpd.rapoo.cn/"
  name "Rapoo MT750S Drivers"
  desc "Multi-mode Wireless Laser Mouse Drivers"
  homepage "https://www.rapoo-eu.com/support/mice-support/mt750s-support/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/RapooOptions_MT750S_(\d+)\.pkg/i)
  end

  pkg "RapooOptions_MT750S_#{version}.pkg"

  uninstall pkgutil:   [
    "com.mygreatcompany.pkg.plist",
    "com.mygreatcompany.pkg.MT750S",
    "com.mygreatcompany.pkg.MT750SUninstall",
    "com.mygreatcompany.pkg.MT750SMgr",
    "com.mygreatcompany.pkg.RapooOptionsDeamon",
  ],
            quit:      "com.mygreatcompany.pkg.RapooOptionsDeamon",
            launchctl: "com.rapoo.driver"
end
