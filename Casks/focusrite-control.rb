cask "focusrite-control" do
  version "3.10.0.1981"
  sha256 "1250152259ba9836656c75b5d7ea296a092c57cef51d3f6ebddb2a89e30cc8a4"

  url "https://fael-downloads-prod.focusrite.com/customer/prod/s3fs-public/downloads/Focusrite%20Control%20-%20#{version}.dmg"
  name "Focusrite Control"
  desc "Control your Focusrite interface"
  homepage "https://focusrite.com/en/focusrite-control"

  livecheck do
    url "https://customer.focusrite.com/en/support/downloads?brand=Focusrite&product_by_type=1501&download_type=software"
    regex(%r{href=.*?/Focusrite%20Control%20-%20(\d+(?:\.\d+)+)\.dmg}i)
  end

  pkg "Focusrite Control.pkg"

  uninstall pkgutil:   "com.focusrite.FocusriteControl",
            launchctl: "com.focusrite.ControlServer"
end
