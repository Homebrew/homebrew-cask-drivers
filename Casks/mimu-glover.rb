cask "mimu-glover" do
  version "1.1.1"
  sha256 "9f318e06e9b134c6c587ad1e9b4f4cb6106ebe155d6162da5401df343b48fbd5"

  url "https://static.mimugloves.com/Glover/Glover-MacOS-#{version}.zip"
  name "Glover"
  desc "MiMU Gloves software"
  homepage "https://mimugloves.com/glover/"

  livecheck do
    url "https://mimugloves.com/glover/"
    regex(/Glover-MacOS-(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Glover.app"

  zap trash: [
    "~/Library/Application Support/Glover",
    "~/Library/Caches/Glover",
  ]
end
