cask "voicevox@preview" do
  version "0.16.0-preview.1"
  sha256 "14b48d4a3723fd9fc211e5c350f7563b56613ab981258038c3fda302acb17f0b"

  url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/VOICEVOX.#{version}.dmg",
      verified: "github.com/VOICEVOX/voicevox/"
  name "VOICEVOX"
  desc "Free, medium-quality text-to-speech and singing synthesizer software"
  homepage "https://voicevox.hiroshiba.jp/"

  livecheck do
    url :url
    regex(/(\d+(?:\.\d+)*-preview\.\d+)$/i)
  end

  conflicts_with cask: [
    "voicevox",
    "voicevox@dev",
  ]

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
