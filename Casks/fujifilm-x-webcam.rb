cask "fujifilm-x-webcam" do
  version "2.1.0,z0lr203j"
  sha256 "95549343595c92bc919035073139eefa1560edbdda6a81065ffa3e53031b952b"

  url "https://dl.fujifilm-x.com/support/software/x-webcam-mac#{version.before_comma.no_dots}-#{version.after_comma}/XWebcamIns#{version.before_comma.no_dots}.pkg"
  appcast "https://fujifilm-x.com/global/support/download/software/x-webcam/",
          must_contain: version.before_comma.no_dots
  name "FUJIFILM X Webcam"
  desc "Solution that turns X Series and GFX System digital cameras into webcams"
  homepage "https://fujifilm-x.com/support/download/software/x-webcam/"

  depends_on macos: ">= :sierra"

  pkg "XWebcamIns#{version.before_comma.no_dots}.pkg"

  uninstall pkgutil: [
    "com.fujifilm.XWebcam",
    "com.fujifilm.XWebcam.Settings",
  ]
end
