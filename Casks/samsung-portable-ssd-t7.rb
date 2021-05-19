cask "samsung-portable-ssd-t7" do
  if MacOS.version <= :catalina
    version "1.7.2"
    sha256 "3fc7edb7140f24a8711edfaa9e09555692d8ab8d113d41cf9247fce009dd5b8f"
    url "https://s3.ap-northeast-2.amazonaws.com/global.semi.static/SAMSUNG_PORTABLE_SSD_T7_TOUCH_20200324/SW/M1Y2D9M9090J2KIA55338E2512E718DB3E7A87298A7108/SamsungPortableSSD_Setup_1.0_Mac.zip",
        verified: "s3.ap-northeast-2.amazonaws.com/global.semi.static/SAMSUNG_PORTABLE_SSD_T7_TOUCH_20200324"
    pkg "SamsungPortableSSD_Setup_Mac_1.0.pkg"
  else
    version "1.7.3"
    sha256 "200bcf671345c137740df6fabc4371f1ae009a2a0d2fd97cb18133c65a74e44c"
    url "https://s3.ap-northeast-2.amazonaws.com/global.semi.static/SAMSUNG_PORTABLE_SSD_T7/SW/E3CF7A10A331A6AF8E2512E718DB33F7D2E7A87298A710866E07E5F6203/SamsungPortableSSD_Setup_Mac_#{version}.zip",
        verified: "s3.ap-northeast-2.amazonaws.com/global.semi.static/SAMSUNG_PORTABLE_SSD_T7"
    pkg "SamsungPortableSSD_Setup_Mac.pkg"
  end

  name "Samsung Portable SSD Software for T7/T7 Touch"
  name "Samsung Portable SSD Software 1.0 for Mac"
  name "Portable SSD Software"
  desc "Configuration software for Samsung's T7 and T7 Touch portable SSDs"
  homepage "https://www.samsung.com/semiconductor/minisite/ssd/download/portable/"

  conflicts_with cask: "samsung-portable-ssd-t5"

  uninstall quit:      [
    "com.samsung.portablessdplus.software",
    "com.samsung.portablessdplus.mon",
  ],
            launchctl: "com.samsung.portablessdplus.mon",
            kext:      "com.samsung.portablessd.driver",
            pkgutil:   [
              "com.samsung.portablessdplus.softwarepkg",
              "com.samsung.portablessdplusuniversal.softwarepkg",
              "com.samsung.portablessd.driverpkg",
              "com.samsung.portablessd.driver.pkg",
              "com.samsung.portablessd.samsungPortableSsdDriver.postflight.pkg",
              "com.samsung.portablessd.samsungPortableSsdDriver.preflight.pkg",
              "com.samsung.portablessd.samsungPortableSsdSoftware.preflight.pkg",
            ],
            delete:    [
              "~/Library/Application\ Support/Portable_SSD",
              "~/Desktop/SamsungPortableSSD_1.0.app",
              "/System/Library/Extensions/SamsungPortableSSDDriver.kext",
              "/Library/Extensions/SamsungPortableSSDDriver.kext",
            ]

  caveats do
    reboot
    kext
  end
end
