cask "insta360-studio" do
  version "3.5.4,2020_20201029_064913:20201029.749ae151b284b24ee59feeced39256b6"
  sha256 "b17676b7de5ba30630f0467c13c2bb32e9d74542a5531f8a69302d979e240e24"

  url "https://res.insta360.com/static/assets/storage/#{version.after_colon.major}/#{version.after_colon.minor}/Insta360_Studio_#{version.after_comma.before_colon}_signed.pkg"
  name "Insta360 Studio"
  homepage "https://www.insta360.com/"

  container type: :zip

  pkg "Insta360 Studio #{version.after_comma.before_colon}_signed.pkg"

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
