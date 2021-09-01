cask "segger-jlink" do
  version "7.54"

  if Hardware::CPU.intel?
    sha256 "1465378324d59a0125dc28bf6763250f635f9c4d903c4622cbd12fe3e2e3b27d"

    url "https://www.segger.com/downloads/jlink/JLink_MacOSX_V#{version.no_dots}_x86_64.pkg",
        using: :post,
        data:  {
          "accept_license_agreement" => "accepted",
          "non_emb_ctr"              => "confirmed",
          "submit"                   => "Download software",
        }

    pkg "JLink_MacOSX_V#{version.no_dots}_x86_64.pkg"
  else
    sha256 "2b1cc270bd855e46d873ccaf8a512a4030ad27fa629fca330b677547f54b37c2"

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
