cask "insta360-studio" do
  version "4.1.0,9c3c4473273192e24b4143306d29d3ea,2021_20211105_112742"
  sha256 "c037f5aa18c8f5ce606963be0bba6b737b20a6c9056839e8ca8dd830a8737e4e"

  url "https://res.insta360.com/static/#{version.csv[1]}/Insta360_Studio_#{version.csv[2]}_signed.pkg"
  name "Insta360 Studio"
  desc "Video and photo editor"
  homepage "https://www.insta360.com/"

  livecheck do
    url "https://openapi.insta360.com/app/appDownload/getGroupApp?group=insta360-go2&X-Language=en-us"
    strategy :page_match do |page|
      apps = JSON.parse(page)["data"]["apps"].find { |app| app["id"] == 38 }["items"]
                 .sort_by { |k| k["version"] }.reverse
      macos = apps.find { |item| item["platform"] == "mac" }
      v = macos["version"]
      regex = %r{/([[:xdigit:]]+)/Insta360[._-]Studio[._-](\d+(?:[._-]\d+)*)[._-]signed\.pkg}i
      match = macos["channels"][0]["download_url"].match(regex)
      next if match.blank? || v.blank?

      "#{v},#{match[1]},#{match[2]}"
    end
  end

  pkg "Insta360_Studio_#{version.csv[2]}_signed.pkg"

  uninstall quit:    "com.insta360.studio",
            delete:  "#{appdir}/Insta360 Studio #{version.csv[2].split("_")[0]}.app",
            pkgutil: [
              "com.insta360.insta360Studio",
              "com.insta360.PremierePlugin",
              "com.insta360.ThumbnailPlugin",
            ]

  zap trash: [
    "~/Library/Application Support/Insta360",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.insta360.studio",
    "~/Library/Caches/Insta360",
    "~/Library/Saved Application State/com.insta360.studio.savedState",
  ]
end
