cask "elektron-transfer" do
  version "1.4.0.1,133f6ec3-a98c-5781-9910-39a0fce402e7"
  sha256 "2eb728e31f045e9f4c3c2fa3480b699379dedfae3c402d18b2b7dab2ef87a6b8"

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
