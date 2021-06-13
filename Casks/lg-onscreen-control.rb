cask "lg-onscreen-control" do
  version "4.64,RZVx2pDPIzebqfElELBcWw"
  sha256 "e72e451e8b5eadb250c45ecd0cdeaf5ee9bff641466cf602b1f29c863c812d1f"

  url "https://gscs-b2c.lge.com/downloadFile?fileId=#{version.after_comma}",
      verified: "lge.com/"
  name "LG OnScreen Control"
  homepage "https://www.lg.com/us/support/monitors"

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
              "com.OSC.Fonts.pkg",
              "com.OSCApp.pkg",
              "com.OSCMultiMonitor.pkg",
              "com.OSC_Directory.pkg",
              "com.OSC_Library.pkg",
              "com.uninstall.pkg",
              "com.lge.onscreenControl.*",
              "com.lge.OnscreenControl.*",
            ]

  zap trash: [
    "~/Library/Caches/com.LGSI.OnScreen-Control",
    "~/Library/Caches/com.LGSI.OSCMultiMonitor",
    "~/Library/Preferences/com.LGSI.OnScreen-Control.plist",
    "~/Library/Preferences/com.LGSI.OSCMultiMonitor.plist",
  ]
end
