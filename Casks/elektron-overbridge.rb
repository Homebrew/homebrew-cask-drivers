cask "elektron-overbridge" do
  version "2.0.60.2,0de7203c-0bdf-5575-acff-4f1be91cee64"
  sha256 "4997f0c63598bae0b010282f66bbb07d239e4f51d6d4a849da184f1bea8d39ea"

  url "https://se-elektron-devops.s3.amazonaws.com/release/#{version.after_comma}/Elektron_Overbridge_#{version.before_comma}.dmg",
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
