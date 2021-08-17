cask "focusrite-thunderbolt" do
  version "4.9.3.2"
  sha256 "350bc7d3ae6a8bfa934ec664772203ea85f970b0ea88c784847cc93d9ad75c44"

  url "https://fael-downloads-prod.focusrite.com/customer/prod/s3fs-public/downloads/FocusriteThunderboltMac_#{version.major_minor_patch}-release_0.dmg"
  appcast "https://customer.focusrite.com/support/downloads?brand=Focusrite&product_by_type=545&download_type=software",
          must_contain: version.major_minor_patch
  name "Focusrite Thunderbolt"
  desc "Thunderbolt driver for Focusrite devices"
  homepage "https://customer.focusrite.com/support/downloads?brand=Focusrite&product_by_type=545"

  pkg "FocusritePCIe-#{version}.pkg"

  uninstall pkgutil: [
    "com.focusrite.pkg.FocusritePCIe.audio_driver",
    "com.focusrite.pkg.FocusritePCIe.midi_driver",
  ]
end
