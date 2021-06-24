cask "blue-sherpa" do
  version "20210422"
  sha256 "1424f86950130c36115fa99c632dc55fe4cff7e3ae7a846bf051f140eb7396c0"

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
