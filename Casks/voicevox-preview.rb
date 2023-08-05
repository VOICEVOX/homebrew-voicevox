cask "voicevox-preview" do
  version "0.15.0-preview.4"
  sha256 "b98c292b142b344580f3557c4dc821a9a646e5ca5c9fdaae183eb965fd6b336c"

  url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/VOICEVOX.dmg",
      verified: "github.com/VOICEVOX/voicevox/"
  name "VOICEVOX"
  desc "Free, medium-quality text-to-speech software"
  homepage "https://voicevox.hiroshiba.jp/"

  livecheck do
    url :url
    regex(/(\d+(?:\.\d+)*-preview\.\d+)$/i)
  end

  conflicts_with cask: "voicevox"

  app "VOICEVOX.app"

  zap trash: [
    "~/Library/Application Support/voicevox",
    "~/Library/Application Support/voicevox-cpu",
    "~/Library/Application Support/voicevox-engine",
    "~/Library/Logs/voicevox",
    "~/Library/Logs/voicevox-cpu",
    "~/Library/Preferences/jp.hiroshiba.voicevox.plist",
    "~/Library/Saved Application State/jp.hiroshiba.voicevox.savedState",
  ]
end
