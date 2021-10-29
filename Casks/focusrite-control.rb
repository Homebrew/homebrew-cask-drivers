cask "focusrite-control" do
  version "3.7.4.1943"
  sha256 "969d9e78f42f9f810e40be4e2b07450e5cf6cd4267d72c5ae525899742c8baab"

  url "https://fael-downloads-prod.focusrite.com/customer/prod/s3fs-public/downloads/Focusrite%20Control%20-%20#{version}.dmg"
  name "Focusrite Control"
  desc "Control your Focusrite interface"
  homepage "https://focusrite.com/en/focusrite-control"

  livecheck do
    url "https://customer.focusrite.com/en/support/downloads?brand=Focusrite&product_by_type=1360&download_type=software"
    strategy :page_match
    regex(%r{href=.*?/Focusrite%20Control%20-%20(\d+(?:\.\d+)+)\.dmg}i)
  end

  pkg "Focusrite Control.pkg"

  uninstall pkgutil:   "com.focusrite.FocusriteControl",
            launchctl: "com.focusrite.ControlServer"
end
