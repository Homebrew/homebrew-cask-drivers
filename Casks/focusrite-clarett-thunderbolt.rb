cask "focusrite-clarett-thunderbolt" do
  version "4.6.2.768"
  sha256 "2a56dff7bc57a430084575fde1f28a4981b16525950a6b30130eca154f9dcfe7"

  url "https://fael-downloads-prod.focusrite.com/customer/prod/s3fs-public/downloads/ClarettThunderboltDriver-#{version.major_minor_patch}.dmg"
  appcast "https://customer.focusrite.com/support/downloads?brand=Focusrite&product_by_type=545&download_type=software",
          must_contain: version.major_minor_patch
  name "Focusrite Clarett Thunderbolt"
  homepage "https://customer.focusrite.com/support/downloads?brand=Focusrite&product_by_type=545"

  pkg "FocusritePCIe-#{version}.pkg"

  uninstall pkgutil: [
    "com.focusrite.pkg.FocusritePCIe.audio_driver",
    "com.focusrite.pkg.FocusritePCIe.midi_driver",
  ]
end
