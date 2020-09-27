cask "blue-sherpa" do
  version "20200810"
  sha256 "f1287b3b32007620f36bc1d49bc1f8cfb7347e228e34fa3b07904b186fbfcf64"

  url "https://software.bluemic.com/blue/BlueSherpa-#{version}.pkg"
  appcast "https://www.bluemic.com/en-us/products/sherpa/"
  name "Blue Sherpa"
  desc "Companion app for Blue USB microphones"
  homepage "https://www.bluemic.com/en-us/products/sherpa/"

  # pkg cannot be installed automatically
  installer manual: "BlueSherpa-#{version}.pkg"

  uninstall pkgutil: "com.bluemicrophones.Blue"
end
