cask "lg-onscreen-control" do
  version "5.23,zQPytl4jWbTy4D47mQFA"
  sha256 "0aac65e8d50b942dda874bf14f24c1a85e72f46deb3fe67253ec9a6f635abe0e"

  url "https://gscs-b2c.lge.com/downloadFile?fileId=#{version.csv.second}",
      verified: "lge.com/"
  name "LG OnScreen Control"
  desc "Displays all connected LG monitor information"
  homepage "https://www.lg.com/us/support/monitors"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :mojave"

  pkg "OSC_V#{version.before_comma}_signed.pkg"

  postflight do
    system_command "/bin/chmod",
                   args: ["755", "/usr/local", "/usr/local/lmm"],
                   sudo: true
  end

  uninstall login_item: [
    "OnScreen Control",
    "OSCMultiMonitor",
  ],
            quit:       [
              "com.LGSI.OnScreen-Control",
              "com.LGSI.OSCMultiMonitor",
            ],
            pkgutil:    [
              "com.lge.onscreenControl.*",
              "com.lge.OnscreenControl.*",
              "com.OSC_Directory.pkg",
              "com.OSC_Library.pkg",
              "com.OSC.Fonts.pkg",
              "com.OSCApp.pkg",
              "com.OSCMultiMonitor.pkg",
              "com.uninstall.pkg",
            ]

  zap trash: [
    "~/Library/Caches/com.LGSI.OnScreen-Control",
    "~/Library/Caches/com.LGSI.OSCMultiMonitor",
    "~/Library/Preferences/com.LGSI.OnScreen-Control.plist",
    "~/Library/Preferences/com.LGSI.OSCMultiMonitor.plist",
  ]
end
