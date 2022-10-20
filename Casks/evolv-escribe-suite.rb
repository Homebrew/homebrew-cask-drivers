cask "evolv-escribe-suite" do
  version "2_SP45"
  sha256 "8439dea2ff071b58d7a5d2f9a765b9652e08f341832903258477fd9697ce75f8"

  url "https://downloads.evolvapor.com/SetupEScribe#{version}_INT.pkg"
  name "EScribe Suite"
  desc "Configure, monitor, and modify the operation of your DNA device"
  homepage "https://www.evolvapor.com/"

  livecheck do
    url "https://www.evolvapor.com/escribe"
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
