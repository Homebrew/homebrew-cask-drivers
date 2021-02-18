cask "segger-jlink" do
  version "6.94d"

  if Hardware::CPU.intel?
    sha256 "226b759a8f75aed3a2695faf6b80d3393b36cb822351881047b0ba975990607a"

    url "https://www.segger.com/downloads/jlink/JLink_MacOSX_V#{version.no_dots}_x86_64.pkg",
        using: :post,
        data:  {
          "accept_license_agreement" => "accepted",
          "non_emb_ctr"              => "confirmed",
          "submit"                   => "Download software",
        }

    pkg "JLink_MacOSX_V#{version.no_dots}_x86_64.pkg"
  else
    sha256 "8ba775ae30c928118deed4b58d781eb346a92cfbd8f2c538d725d4646b140069"

    url "https://www.segger.com/downloads/jlink/JLink_MacOSX_V#{version.no_dots}_arm64.pkg",
        using: :post,
        data:  {
          "accept_license_agreement" => "accepted",
          "non_emb_ctr"              => "confirmed",
          "submit"                   => "Download software",
        }

    pkg "JLink_MacOSX_V#{version.no_dots}_arm64.pkg"
  end

  name "Segger J-Link Command Line Tools"
  desc "Software and Documentation pack for Segger J-Link debug probes"
  homepage "https://www.segger.com/downloads/jlink"

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
