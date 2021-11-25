cask "mimu-glover" do
  version "1.1.0"
  sha256 "1b3eaf2dffe2496d5570283d918f517b5efa3251788678e9a81c4ba280bd33bd"

  url "https://static.mimugloves.com/Glover/Glover-MacOS-#{version}.zip"
  name "Glover"
  desc "MiMU Gloves software"
  homepage "https://mimugloves.com/glover/"

  livecheck do
    url "https://mimugloves.com/glover/"
    regex(%r{Glover-MacOS-(\d+(?:\.\d+)+)\.zip}i)
  end

  app "Glover.app"

  zap trash: [
    "~/Library/Application Support/Glover",
    "~/Library/Caches/Glover",
  ]
end
