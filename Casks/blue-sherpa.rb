cask "blue-sherpa" do
  version "20191122"
  sha256 "7d89e64d9bf3175a07357d7903b50392d155dbd454e1dba784d3be8a27aaa14f"

  url "http://software.bluemic.com/blue/BlueSherpa-#{version}.pkg"
  name "Blue Sherpa"
  homepage "https://www.bluemic.com/en-us/products/sherpa/"

  pkg "BlueSherpa-#{version}.pkg"

  uninstall pkgutil: "com.bluemicrophones.Blue"
end
