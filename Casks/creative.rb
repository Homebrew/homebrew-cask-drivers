cask "creative" do
  version "1.5.1,94"
  sha256 "efd98409681a7d860774c7b9a1c44508d13aa1af305d9f057367580c4e1957e9"

  url "https://files.creative.com/manualdn/Applications/100394/FELGxPhWie/Creative%20#{version.csv.first}%20build%20#{version.csv.second}.zip"
  name "Creative"
  desc "Control panel for the Creative hardware"
  homepage "https://support.creative.com/"

  livecheck do
    url "https://support.creative.com/Products/ProductDetails.aspx?catID=1&subCatID=1258&prodID=23677"
    regex(/Creative\s(\d+(?:[._]\d)+)\sbuild\s(\d+(?:\d)+)+\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "Creative.app"

  uninstall launchctl: [
              "com.creative.DriverXPCService",
              "com.creative.trustudiopc",
            ],
            pkgutil:   [
              "com.creative.AudioDriver",
              "com.creative.ios.creativeapp",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.creative.ios.creativeapp",
    "~/Library/Application Support/com.creative.creativecache.realm",
    "~/Library/Application Support/com.creative.ios.creativeapp",
    "~/Library/Application Support/com.creative.ios.creativeapp.logs",
    "~/Library/Caches/com.creative.ios.creativeapp",
    "~/Library/Containers/com.creative.ios.creativeapp",
    "~/Library/HTTPStorages/com.creative.ios.creativeapp",
    "~/Library/Preferences/com.creative.ios.creativeapp.plist",
  ]
end
