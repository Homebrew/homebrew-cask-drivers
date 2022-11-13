cask "kensingtonworks" do
  version "3.1.4_1667509507,october-2022"
  sha256 "c25754c0a3a86b3bbefe94e7c77e7b5cb8ab88fc5986ae22d2b9327a7e47ed9e"

  url "https://www.kensington.com/siteassets/software-support/kensingtonworks/#{version.csv.second}/kensingtonworks_#{version.csv.first}.pkg"
  name "KensingtonWorks"
  desc "Software to personalize Kensington trackballs, mice, and presenters"
  homepage "https://www.kensington.com/software/kensingtonworks/"

  livecheck do
    url :homepage
    regex(%r{href=.*?kensingtonworks/([^/]+)/kensingtonworks[._-]v?(\d+(?:\.\d+)+(?:[._-]\d+)?)\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match.second},#{match.first}" }
    end
  end

  conflicts_with cask: "homebrew/cask-drivers/kensington-trackball-works"
  depends_on macos: ">= :sierra"

  pkg "kensingtonworks_#{version.csv.first}.pkg"

  uninstall launchctl: "com.kensington.trackballworks",
            quit:      [
              "com.kensington.kensingtonworks2.app",
              "com.kensington.kensingtonworks2.helper2",
              "com.kensington.tbwDKDriver",
              "com.kensington.tbwdkmanager",
            ],
            kext:      "/Library/Extensions/trackballworks2.kext",
            pkgutil:   [
              "com.kensington.trackballworks2",
              "com.kensington.trackballworks2.installer",
            ]

  zap trash: [
    "/Library/Application Support/Kensington",
    "~/Library/Application Support/KensingtonWorks",
    "~/Library/Logs/KensingtonWorks",
  ]

  caveats do
    reboot
  end
end
