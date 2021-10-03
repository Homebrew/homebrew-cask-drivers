cask "segger-ozone" do
  version "3.24f"
  sha256 "67e3be89745c18210e528da0d010a6a3f72e9dbba28cbe51e3bc160c3b7d7c27"

  url "https://www.segger.com/downloads/jlink/Ozone_MacOSX_V#{version.no_dots}_x86_64.pkg"
  name "Ozone"
  desc "J-Link Debugger and Performance Analyzer"
  homepage "https://www.segger.com/products/development-tools/ozone-j-link-debugger"

  livecheck do
    url "https://www.segger.com/downloads/jlink/ReleaseNotes_Ozone.html"
    strategy :page_match
    regex(/<h2>Version\s*(\d+(?:\.\d+)*[a-z]?)/i)
  end

  pkg "Ozone_MacOSX_V#{version.no_dots}_x86_64.pkg"

  uninstall quit:    "com.yourcompany.Ozone",
            pkgutil: "com.segger.pkg.Ozone"

  zap trash: [
    "~/Library/Application Support/SEGGER",
    '~/Library/Application Support/SEGGER\\RTTViewer.ini',
    "~/Library/Saved Application State/com.segger.JFlashLite.*savedState",
    "~/Library/Saved Application State/com.segger.JLinkGDBServer.*savedState",
    "~/Library/Saved Application State/com.segger.JLinkLicenseManager.*savedState",
    "~/Library/Saved Application State/com.segger.JLinkRegistration.*savedState",
    "~/Library/Saved Application State/com.segger.JLinkRemoteServer.*savedState",
    "~/Library/Saved Application State/com.yourcompany.Ozone.savedState",
  ]
end
