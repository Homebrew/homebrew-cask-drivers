cask "fujifilm-x-webcam" do
  version "2.1.0,z0lr203j"
  sha256 "95549343595c92bc919035073139eefa1560edbdda6a81065ffa3e53031b952b"

  url "https://dl.fujifilm-x.com/support/software/x-webcam-mac#{version.csv.first.no_dots}-#{version.csv.second}/XWebcamIns#{version.csv.first.no_dots}.pkg"
  name "FUJIFILM X Webcam"
  desc "Solution that turns X Series and GFX System digital cameras into webcams"
  homepage "https://fujifilm-x.com/support/download/software/x-webcam/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      version = page.match(/Mac\s+Version:\s+Ver\.(\d+(?:\.\d+)*)/i)[1]
      version = "#{version}.0".split(".")[0..2].join(".")
      id = page.match(%r{/x-webcam-mac\d+-([^/]+)}i)[1]
      "#{version},#{id}"
    end
  end

  depends_on macos: ">= :sierra"

  pkg "XWebcamIns#{version.before_comma.no_dots}.pkg"

  uninstall pkgutil: [
    "com.fujifilm.XWebcam",
    "com.fujifilm.XWebcam.Settings",
  ]
end
