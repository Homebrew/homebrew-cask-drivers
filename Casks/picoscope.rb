cask "picoscope" do
  version "6.14.54-4r6108"
  sha256 "6f356903bed33033f1660736d5ffff13609a59a28d16140798996726999c0e60"

  url "https://www.picotech.com/download/software/sr/PicoScope-#{version}.pkg"
  name "PicoScope"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://www.picotech.com/downloads/_lightbox/"
    strategy :page_match
    regex(%r{href=.*?/PicoScope-(\d+(?:.\d+)*)\.pkg}i)
  end

  pkg "PicoScope-#{version}.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}"
end
