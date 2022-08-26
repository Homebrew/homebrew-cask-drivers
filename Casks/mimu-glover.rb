cask "mimu-glover" do
  version "1.1.2"
  sha256 "d4692b1e9d530839ae7a58d67727157f5b4593644d565f74d5c58499c8c7d5ac"

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
