cask "picoscope" do
  version "6.14.48-4r5944"
  sha256 "176c8017125b0f6252d2b3483e15c3f159f5d9a9706e8c460bb60565a0e81ef9"

  url "https://www.picotech.com/download/software/beta/PicoScope-#{version}.pkg"
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
