cask "focusrite-control" do
  version "3.10.0.1981"
  sha256 "1250152259ba9836656c75b5d7ea296a092c57cef51d3f6ebddb2a89e30cc8a4"

  url "https://fael-downloads-prod.focusrite.com/customer/prod/s3fs-public/downloads/Focusrite%20Control%20-%20#{version}.dmg"
  name "Focusrite Control"
  desc "Control your Focusrite interface"
  homepage "https://focusrite.com/en/focusrite-control"

  livecheck do
    url "https://downloads.focusrite.com/focusrite/scarlett-3rd-gen/scarlett-solo-3rd-gen"
    regex(%r{href=.*?/Focusrite%20Control%20-%20(\d+(?:\.\d+)+)\.dmg}i)
  end

  pkg "Focusrite Control.pkg"

  uninstall pkgutil:   "com.focusrite.FocusriteControl",
            launchctl: "com.focusrite.ControlServer"
end
