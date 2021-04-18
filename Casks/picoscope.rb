cask "picoscope" do
  version "6.14.36.5676"
  sha256 "4c843d2b8b12bb614da12122341a0e02d42042d180c45160b6e2b6f29af504fb"

  url "https://www.picotech.com/download/software/sr/PicoScope-#{version}.pkg"
  name "PicoScope"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://www.picotech.com/downloads/_lightbox/"
    strategy :page_match
    regex(%r{href=.*?/PicoScope-(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "PicoScope-#{version}.pkg"

  uninstall pkgutil: "com.picotech.picoscope6"
end
