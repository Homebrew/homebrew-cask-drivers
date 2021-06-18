cask "segger-ozone" do
  version "3.24"
  sha256 "be8bbd1f30b22c5cc9c987ee9573c987cd215cfd6ab502885d4d5f8b7143e69d"

  url "https://www.segger.com/downloads/jlink/Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"
  name "Ozone"
  desc "J-Link Debugger and Performance Analyzer"
  homepage "https://www.segger.com/products/development-tools/ozone-j-link-debugger"

  livecheck do
    url "https://www.segger.com/downloads/jlink/ReleaseNotes_Ozone.html"
    regex(/<h2>\s*Version\s*(\d+(?:\.\d+)+[a-z]?)/i)
  end

  pkg "Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"

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
