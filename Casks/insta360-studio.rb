cask "insta360-studio" do
  version "3.6.4,2021_20210410_171056:20210412.faaa98a3bfa1d724f7ceab610c1aea6b"
  sha256 "416ffd5108c3c4a4c7f754807ee43a86884eae021f38148349df56a42332f1d8"

  url "https://res.insta360.com/static/assets/storage/#{version.after_colon.major}/#{version.after_colon.minor}/Insta360_Studio_#{version.after_comma.before_colon}_signed.pkg"
  name "Insta360 Studio"
  desc "Video and photo editor"
  homepage "https://www.insta360.com/"

  livecheck do
    url "https://openapi.insta360.com/website/appDownload/getGroupApp?group=insta360-go2&X-Language=en-us"
    strategy :page_match do |page|
      apps = JSON.parse(page)["data"]["apps"].find { |app| app["id"] == 38 }
      macos = apps["items"].find { |item| item["platform"] == "mac" }
      v1 = macos["version"]
      pattern = %r{.+/(\d+)/([[:xdigit:]]+)/Insta360[._-]Studio[._-](\d+[._-]\d+[._-]\d+)[._-]signed\.pkg}i
      match = macos["channels"][0]["download_url"].match(pattern)
      "#{v1},#{match[3]}:#{match[1]}.#{match[2]}"
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
