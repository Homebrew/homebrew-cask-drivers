cask "segger-jlink" do
  version "7.22b"

  if Hardware::CPU.intel?
    sha256 "5429891857d3de7e5a0f55cb06c6c0664c2e33e8e410462d847d6840460139ef"

    url "https://www.segger.com/downloads/jlink/JLink_MacOSX_V#{version.no_dots}_x86_64.pkg",
        using: :post,
        data:  {
          "accept_license_agreement" => "accepted",
          "non_emb_ctr"              => "confirmed",
          "submit"                   => "Download software",
        }

    pkg "JLink_MacOSX_V#{version.no_dots}_x86_64.pkg"
  else
    sha256 "4d44b18833991763a0758ae30d4fed7b17d865b4a8ac89d6cdc6e8b656d4ebec"

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

  livecheck do
    url "https://www.segger.com/downloads/jlink/ReleaseNotes_JLink.html"
    strategy :page_match
    regex(/Version\s*V(\d+(?:\.\d+[a-z]?)*)/i)
  end

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
