cask "phidget-control-panel" do
  version "22,1.14.20230331"
  sha256 "855cb801fbe31bac0ae12ce6fe501cbeb33a0b336a55eff5d92887eff0815021"

  url "https://www.phidgets.com/downloads/phidget#{version.csv.first}/libraries/macos/Phidget#{version.csv.first}/Phidget#{version.csv.first}_#{version.csv.second}.dmg"
  name "Phidget Control Panel"
  desc "Libraries and control software for the Phidgets sensing kits"
  homepage "https://www.phidgets.com/"

  livecheck do
    url "https://www.phidgets.com/docs/Phidgets_Drivers"
    regex(%r{/Phidget(\d+)_(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      # Identify the latest main version from the Phidgets Drivers page
      main_version = page.scan(%r{/Phidget(\d+)\.dmg}i)
                         .flatten
                         .uniq
                         .map { |v| Version.new(v) }
                         .max
      next if main_version.blank?

      # Collect the response headers from the generic URL to the latest dmg file
      headers = Homebrew::Livecheck::Strategy.page_headers(
        "https://www.phidgets.com/downloads/phidget#{main_version}/libraries/macos/Phidget#{main_version}.dmg",
      ).reduce(&:merge)

      # Match the version from the filename in the `location` header
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :el_capitan"

  pkg "Phidgets.pkg"

  uninstall pkgutil: [
              "com.phidgets.controlpanel#{version.csv.first}",
              "com.phidgets.phidget#{version.csv.first}extra",
              "com.phidgets.phidget#{version.csv.first}java",
              "com.phidgets.phidget#{version.csv.first}networkserver",
              "com.phidgets.phidgetframework#{version.csv.first}",
              "com.phidgets.signeddriver",
            ],
            kext:    "com.phidgets.driver.Phidget"

  # A reboot _seems_ to be needed for the driver to be fully functional
  # (device detected, but sensors unreadable otherwise)
  caveats do
    reboot
  end
end
