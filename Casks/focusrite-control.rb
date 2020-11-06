cask "focusrite-control" do
  version "3.6.0.1822"
  sha256 "17b41f26fcf6d2fa173fee49be58307139d16f8f5399c33d679da907b3b924a6"

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
