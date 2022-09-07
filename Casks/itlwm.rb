cask "itlwm" do
  version "2.1.0"
  sha256 "32e3b652086d493650e88bb2b77f1b5d5069dde0241ba7ea4ab57e2d150de6fa"

  url "https://github.com/OpenIntelWireless/itlwm/releases/download/v#{version}/itlwm_v#{version}_stable.kext.zip",
      verified: "https://github.com/OpenIntelWireless/itlwm/"
  name "itlwm"
  desc "Open source Intel Wi-Fi Driver"
  homepage "https://openintelwireless.github.io/itlwm/"

  artifact "itlwm.kext", target: "/Library/Extensions/itlwm.kext"

  postflight do
    set_ownership("/Library/Extensions/itlwm.kext", user: "root", group: "wheel")
  end

  caveats do
    kext
  end
  caveats <<~EOS
    #{token} is installed to /Library/Extensions/.
    It is recommended that you inject this kext with a bootloader if possible.
  EOS
end
