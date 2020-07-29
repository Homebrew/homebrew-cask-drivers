cask "fujifilm-x-webcam" do
  version "1.0.0,gg7gh9hh"
  sha256 "233f42bf871c1533e166dc3ebc94e4f49baa580853a7b9b3bfe5281c2cdddd5a"

  url "https://dl.fujifilm-x.com/support/software/x-webcam-mac#{version.before_comma.no_dots}-#{version.after_comma}/XWebcamIns#{version.before_comma.no_dots}.pkg"
  appcast "https://fujifilm-x.com/global/support/download/software/x-webcam/"
  name "FUJIFILM X Webcam"
  homepage "https://fujifilm-x.com/support/download/software/x-webcam/"

  depends_on macos: ">= :sierra"

  pkg "XWebcamIns#{version.before_comma.no_dots}.pkg"

  uninstall pkgutil: "com.fujifilm.XWebcam"
end
