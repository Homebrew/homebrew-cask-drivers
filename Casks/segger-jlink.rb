cask "segger-jlink" do
  version "6.86a"
  sha256 "4090951ef5d8aeb1e83bcb68dfc173657b9fb887df34d7a4ce8ed5def1826be6"

  url "https://www.segger.com/downloads/jlink/JLink_MacOSX_V#{version.no_dots}.pkg",
      using: :post,
      data:  {
        "accept_license_agreement" => "accepted",
        "non_emb_ctr"              => "confirmed",
        "submit"                   => "Download software",
      }
  name "Segger J-Link Command Line Tools"
  homepage "https://www.segger.com/downloads/jlink"

  pkg "JLink_MacOSX_V#{version.no_dots}.pkg"

  uninstall quit:    [
    "com.segger.JFlashLite.*",
    "com.segger.JLinkGDBServer.*",
    "com.segger.JLinkLicenseManager.*",
    "com.segger.JLinkRegistration.*",
    "com.segger.JLinkRemoteServer.*",
    "com.segger.JLinkRTTViewer.*",
  ],
            pkgutil: "com.segger.pkg.JLink"

  zap trash: [
    "~/.SEGGER",
    "~/Library/Application Support/SEGGER",
    "~/Library/Saved Application State/com.segger.JFlashLite.*savedState",
    "~/Library/Saved Application State/com.segger.JLinkGDBServer.*savedState",
    "~/Library/Saved Application State/com.segger.JLinkLicenseManager.*savedState",
    "~/Library/Saved Application State/com.segger.JLinkRTTViewer.*savedState",
    "~/Library/Saved Application State/com.segger.JLinkRegistration.*savedState",
    "~/Library/Saved Application State/com.segger.JLinkRemoteServer.*savedState",
  ]

  caveats do
    license @cask.url.to_s
  end
end
