cask "elektron-transfer" do
  version "1.5.0.14,9a7c14b2-bf1d-54b9-ba81-7a24074cc3ff"
  sha256 "56377a86a995ee17cee7b58147a7d1a843287377f965786d8588e338bc36e540"

  url "https://se-elektron-devops.s3.amazonaws.com/release/#{version.csv.second}/Elektron_Transfer_#{version.csv.first}.dmg",
      verified: "se-elektron-devops.s3.amazonaws.com/release/"
  name "Elektron Transfer"
  desc "Tool for transferring samples, presets and firmware updates"
  homepage "https://www.elektron.se/support/?connection=transfer#resources"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\h+(?:-\h+)*)/Elektron[._-]?Transfer[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :el_capitan"

  app "Transfer.app"
end
