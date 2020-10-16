cask "dymo-label" do
  version "8.7.5"
  sha256 "1e605b05350c865f2d9ce163409cd298ef1aba935708265c4b473e64d58ac9c5"

  url "https://download.dymo.com/dymo/Software/Mac/DLS#{version.major}Setup.#{version}.dmg"
  name "Dymo Label"
  desc "Software for DYMO LabelWriters"
  homepage "https://www.dymo.com/en-US/online-support"

  pkg "DYMO Label v.#{version.major}.pkg"

  uninstall launchctl: [
    "com.dymo.dls.webservice",
    "com.dymo.pnpd",
  ],
            pkgutil:   [
              "com.dymo.cups",
              "com.dymo.dls.*",
            ]

  zap trash: [
    "~/Library/Preferences/com.dymo.dls.plist",
    "~/Library/Caches/com.dymo.dls",
  ]
end
