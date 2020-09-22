cask "fujifilm-x-webcam" do
  version "2.0.0,9cy17ibx"
  sha256 "50f49b733835b8e152e8629574bd992b9e71cdee62db9a1c5ca1e6873e7c1a63"

  url "https://dl.fujifilm-x.com/support/software/x-webcam-mac#{version.before_comma.no_dots}-#{version.after_comma}/XWebcamIns#{version.before_comma.no_dots}.pkg"
  appcast "https://fujifilm-x.com/global/support/download/software/x-webcam/"
  name "FUJIFILM X Webcam"
  desc "Solution that can turn X Series and GFX System digital cameras into webcams"
  homepage "https://fujifilm-x.com/support/download/software/x-webcam/"

  depends_on macos: ">= :sierra"

  pkg "XWebcamIns#{version.before_comma.no_dots}.pkg"

  uninstall pkgutil: "com.fujifilm.XWebcam"
end
