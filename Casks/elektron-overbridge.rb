cask "elektron-overbridge" do
  version "2.0.47.1,b53f09be-6301-5e3b-b963-e94f3a517dc1"
  sha256 "d8779e7b3f07019d335e8488156a3558f5c8d3b88a4c9ff5592a480afa5dbf40"

  url "https://s3-eu-west-1.amazonaws.com/se-elektron-devops/release/#{version.after_comma}/Elektron_Overbridge_#{version.before_comma}.dmg",
      verified: "s3-eu-west-1.amazonaws.com/"
  name "Overbridge"
  desc "Integrate Elektron hardware into music software"
  homepage "https://www.elektron.se/overbridge/"

  livecheck do
    url "https://www.elektron.se/support/?connection=overbridge"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/([\da-f]+(?:-[\da-f]+)*)/Elektron_Overbridge_(\d+(?:\.\d+)*)\.dmg}i)
      "#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: ">= :sierra"

  pkg "Elektron Overbridge Installer #{version.before_comma}.pkg"

  uninstall quit:      "se.elektron.OverbridgeEngine",
            pkgutil:   "se.elektron.overbridge.*",
            launchctl: "se.elektron.overbridge.engine",
            delete:    "/Applications/Elektron"
end
