cask "fujifilm-x-acquire" do
  version "1.24.0,09m29rkt"
  sha256 "263074fa04b4e6fbd4e946ec9d64fe334bc42501d5305010a87dac0c7b99f0c4"

  url "https://dl.fujifilm-x.com/support/software/x-acqure-mac#{version.csv.first.no_dots}-#{version.csv.second}/XAcquireIns#{version.csv.first.no_dots}.dmg"
  name "FUJIFILM X Acquire"
  homepage "https://fujifilm-x.com/global/support/download/software/x-acquire/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      version = page.match(/Mac\s+Version:\s+Ver\.(\d+(?:\.\d+)+)/i)[1]
      version = "#{version}.0".split(".")[0..2].join(".")
      id = page.match(%r{/x-acqui?re-mac\d+[._-]([^/]+)}i)[1]
      "#{version},#{id}"
    end
  end

  depends_on macos: ">= :sierra"

  app "FUJIFILM X Acquire.app"
end
