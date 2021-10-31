cask "insta360-studio" do
  version "4.0.1,16e0e5b15f9e5855b6f88a8fdc9fb430:2021_20211019_170852"
  sha256 "c30f695742c9fd84e2ea78642f1145b74c8b4d4c74faa0c6967678e26ff55c77"

  url "https://res.insta360.com/static/#{version.after_comma.before_colon}/Insta360_Studio_#{version.after_comma.after_colon}_signed.pkg"
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

      "#{v},#{match[1]}:#{match[2]}"
    end
  end

  pkg "Insta360_Studio_#{version.after_comma.before_colon}_signed.pkg"

  uninstall quit:    "com.insta360.studio",
            pkgutil: [
              "com.insta360.PremierePlugin",
              "com.insta360.ThumbnailPlugin",
              "com.insta360.insta360Studio",
            ]

  zap trash: [
    "~/Library/Application Support/Insta360",
    "~/Library/Caches/Insta360",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.insta360.studio",
    "~/Library/Saved Application State/com.insta360.studio.savedState",
  ]
end
