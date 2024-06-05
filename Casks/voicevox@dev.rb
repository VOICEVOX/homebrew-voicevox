cask "voicevox@dev" do
  arch arm: "arm64", intel: "x64"
  version "0.20.0-dev"
  sha256 :no_check

  url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/VOICEVOX.#{version}-#{arch}.dmg",
      verified: "github.com/VOICEVOX/voicevox/"
  name "VOICEVOX"
  desc "Free, medium-quality text-to-speech and singing synthesizer software"
  homepage "https://voicevox.hiroshiba.jp/"

  livecheck do
    url :url
    regex(/(\d+(?:\.\d+)*-dev)$/i)
  end

  conflicts_with cask: [
    "voicevox",
    "voicevox@preview",
  ]

  app "VOICEVOX.app"

  zap trash: [
    "~/Library/Application Support/voicevox",
    "~/Library/Application Support/voicevox-engine",
    "~/Library/Logs/voicevox",
    "~/Library/Preferences/jp.hiroshiba.voicevox.plist",
    "~/Library/Saved Application State/jp.hiroshiba.voicevox.savedState",
  ]
end
