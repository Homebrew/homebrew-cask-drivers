cask "elektron-overbridge" do
  version "2.0.58.8,7c32fb47-2f53-5928-83e9-573e8eaf32c3"
  sha256 "9254f692719693f927d774979c4f0f91d8a8c0926bd97ceed49f9e0b60035ad0"

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
