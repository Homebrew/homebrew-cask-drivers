cask "blue-sherpa" do
  version "20210729"
  sha256 "63c307483f104a1109a172fb18e655be6385be46a47440e1f9fb36701cfab1ec"

  url "https://software.bluemic.com/blue/BlueSherpa-#{version}.pkg"
  name "Blue Sherpa"
  desc "Companion app for Blue USB microphones"
  homepage "https://www.bluemic.com/en-us/products/sherpa/"

  livecheck do
    url "https://software.bluemic.com/blue/"
    strategy :page_match
    regex(/href=.*?BlueSherpa-(\d+)\.pkg/i)
  end

  depends_on macos: ">= :high_sierra"

  # pkg cannot be installed automatically
  installer manual: "BlueSherpa-#{version}.pkg"

  uninstall pkgutil: "com.bluemicrophones.Blue",
            delete:  "/Applications/Blue.app"
end
