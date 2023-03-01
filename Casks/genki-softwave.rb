cask "genki-softwave" do
  version "0.12.3"
  sha256 :no_check

  url "https://bitbucket.org/genki_instruments/software_releases/downloads/Softwave_mac.zip",
      verified: "bitbucket.org/genki_instruments/software_releases/"
  name "Softwave"
  desc "Wave Ring Software"
  homepage "https://genkiinstruments.com/products/softwave"

  livecheck do
    url "https://bitbucket.org/genki_instruments/software_releases/downloads/appcast.xml"
    regex(/shortVersionString="(\d+(?:\.\d+)+)"\s+sparkle:os="macos"/i)
  end

  pkg "Softwave.pkg"

  uninstall pkgutil: "com.genkiinstruments.softwave"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Softwave_*.plist",
    "~/Library/Caches/com.genkiinstruments.softwave",
    "~/Library/Preferences/com.genkiinstruments.softwave.plist",
    "~/Library/Saved Application State/com.genkiinstruments.softwave.savedState",
    "~/Library/Softwave",
  ]
end
