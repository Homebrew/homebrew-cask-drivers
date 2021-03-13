cask "focusrite-control" do
  version "3.7.2.1923"
  sha256 "0fed5039967b432bdfec2751c3bb92cf018a3271c1c99d0a0e555a154b1bec21"

  url "https://fael-downloads-prod.focusrite.com/customer/prod/s3fs-public/downloads/Focusrite%20Control%20-%20#{version}.dmg"
  appcast "https://customer.focusrite.com/support/downloads?brand=Focusrite&product_by_type=1360&download_type=software",
          must_contain: version.major_minor_patch
  name "Focusrite Control"
  homepage "https://customer.focusrite.com/support/downloads?brand=Focusrite&product_by_type=1360&download_type=software"

  pkg "Focusrite Control.pkg"

  uninstall pkgutil:   [
    "com.focusrite.FocusriteControl",
  ],
            launchctl: "com.focusrite.ControlServer"
end
