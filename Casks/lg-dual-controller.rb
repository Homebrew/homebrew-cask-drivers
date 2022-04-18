cask "lg-dual-controller" do
  version "2.70,oy0AG9UBOoqvdAcBsemiA"
  sha256 "932fb4343c37738ee56d9b9b1bcd99a62edda0d6343435f9902152469f70bff1"

  url "https://gscs-b2c.lge.com/downloadFile?fileId=#{version.csv.second}",
      verified: "lge.com/"
  name "LG Dual Controller"
  desc "Dual Controller enables keyboard and mouse sharing between systems"
  homepage "https://www.lg.com/us/support/monitors"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :mojave"

  pkg "DC_V#{version.csv.first}_signed.pkg"

  uninstall login_item: [
    "Dual Controller",
  ],
            quit:       [
              "com.LGSI.-.Dual-Controller",
            ],
            pkgutil:    [
              "com.LGSI.-.Dual-Controller",
              "com.DC.Fonts.pkg",
              "com.DCApp.pkg",
              "com.DC_Directory.pkg",
              "com.DC_Library.pkg",
              "com.uninstall.pkg",
            ]

  zap trash: [
    "~/Library/Preferences/com.LGSI.-.Dual-Controller",
  ]
end
