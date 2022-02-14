cask "elektron-overbridge" do
  version "2.0.65.2,28762c4c-c345-50c5-b52f-1f9964aef96c"
  sha256 "0e3e88fc48d47b33383ec92301225845a460233254d5198638de51fc2ae16179"

  url "https://se-elektron-devops.s3.amazonaws.com/release/#{version.csv.second}/Elektron_Overbridge_#{version.csv.first}.dmg",
      verified: "se-elektron-devops.s3.amazonaws.com/release/"
  name "Overbridge"
  desc "Integrate Elektron hardware into music software"
  homepage "https://www.elektron.se/overbridge/"

  livecheck do
    url "https://www.elektron.se/support/?connection=overbridge"
    strategy :page_match do |page|
      page.scan(%r{href=.*?/(\h+(?:-\h+)*)/Elektron[._-]?Overbridge[._-]?v?(\d+(?:\.\d+)+)\.dmg}i).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  depends_on macos: ">= :sierra"

  pkg "Elektron Overbridge Installer #{version.before_comma}.pkg"

  uninstall quit:      "se.elektron.OverbridgeEngine",
            pkgutil:   "se.elektron.overbridge.*",
            launchctl: "se.elektron.overbridge.engine",
            delete:    "/Applications/Elektron"
end
