cask "blue-sherpa" do
  version "20210121"
  sha256 "42632547bdf69fb979b31cc08e601fd5805b638259e2e9e916b865f0893ed8ba"

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
