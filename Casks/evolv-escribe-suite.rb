cask "evolv-escribe-suite" do
  version "2_SP24"
  sha256 "4fb85616db9d6f605fac2bc583d8ab016eb79815385a585bec252185860d1ed4"

  url "https://downloads.evolvapor.com/SetupEScribe#{version}_INT.pkg"
  name "EScribe Suite"
  desc "Configure, monitor, and modify the operation of your DNA device"
  homepage "https://www.evolvapor.com/"

  livecheck do
    url "https://www.evolvapor.com/escribe"
    strategy :page_match
    regex(%r{href=.*?/SetupEScribe(\d+_SP\d+(?:_\d+)?)_INT\.pkg}i)
  end

  pkg "SetupEScribe#{version}_INT.pkg"

  uninstall pkgutil: [
    "org.ecigstats.Main",
    "com.evolvapor.EScribe.Suite",
  ],
            script:  {
              executable: "/Applications/EScribe Suite.app/Contents/MacOS/ECigStats.app/Contents/MacOS/RunProgram",
              args:       ["--exit"],
            }
end
