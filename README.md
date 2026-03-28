# homebrew-voicevox

HomebrewでVOICEVOXをインストールできるようにするリポジトリです。

## インストール方法

```sh
$ brew tap VOICEVOX/voicevox
$ brew install --cask --no-quarantine voicevox
```

## 開発

VOICEVOXエディタが更新されるたびに自動でプルリクエスト・マージされるようになっています。
詳しくは[こちらのプルリクエスト](https://github.com/VOICEVOX/homebrew-voicevox/pull/13)をご参照ください。

## GitHub Actions のバージョン固定

[pinact](https://github.com/suzuki-shunsuke/pinact) を使って GitHub Actions のバージョンを full-length commit SHA に固定しています。
プルリクエストを送ると自動でテストされます。

```bash
# バージョンを固定する
pinact run

# バージョンを更新して固定する
pinact run --update --min-age 7
```
