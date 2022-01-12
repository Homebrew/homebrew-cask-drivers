cask "fujifilm-x-acquire" do
  version "1.18.0,f12zkf10"
  sha256 "41d482cf8f0e9e096052caf8e4deca6ad5ca193093d17f5b06936623f1b74203"

  url "https://dl.fujifilm-x.com/support/software/x-acquire-mac#{version.csv.first.no_dots}-#{version.csv.second}/XAcquireIns#{version.csv.first.no_dots}.dmg"
  appcast "https://fujifilm-x.com/global/support/download/software/x-acquire/"
  name "FUJIFILM X Acquire"
  homepage "https://fujifilm-x.com/global/support/download/software/x-acquire/"

  depends_on macos: ">= :sierra"

  app "FUJIFILM X Acquire.app"
end
