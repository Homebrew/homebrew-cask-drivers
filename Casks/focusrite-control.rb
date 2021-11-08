cask "focusrite-control" do
  version "3.8.3.1967"
  sha256 "80b0078b337e88582ac3edbed888c19420364014862ea38d31602824b18e6c8a"

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
