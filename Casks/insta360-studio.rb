cask "insta360-studio" do
  version "3.6.4,2021_20210412_145507:20210412.bc8d698e971ae16f2517bc3e3c581278"
  sha256 "8369259ce47cb23e9ae40c378636fdcf2bb91e179a781e80768399613147bd26"

  url "https://res.insta360.com/static/assets/storage/#{version.after_colon.major}/#{version.after_colon.minor}/Insta360_Studio_#{version.after_comma.before_colon}_signed.pkg"
  name "Insta360 Studio"
  desc "Video and photo editor"
  homepage "https://www.insta360.com/"

  livecheck do
    url "https://openapi.insta360.com/website/appDownload/getGroupApp?group=insta360-go2&X-Language=en-us"
    strategy :page_match do |page|
      apps = JSON.parse(page)["data"]["apps"].find { |app| app["id"] == 38 }["items"]
                 .sort_by { |k| k["version"] }.reverse
      macos = apps.find { |item| item["platform"] == "mac" }
      v = macos["version"]
      regex = %r{/(\d+)/([[:xdigit:]]+)/Insta360[._-]Studio[._-](\d+(?:[._-]\d+)*)[._-]signed\.pkg}i
      match = macos["channels"][0]["download_url"].match(regex)
      "#{v},#{match[3]}:#{match[1]}.#{match[2]}"
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
