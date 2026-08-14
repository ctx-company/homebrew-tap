# Template rendered by .github/workflows/release.yml's `formula` job, which
# fills the placeholder tokens below (double-underscore delimited) from the
# same release build that produces the ctx-v{version}-{target}.tar.gz
# archives (see modules/cli/Cargo.toml's [package.metadata.binstall] for the
# naming contract). The rendered copy is attached to the GitHub release and
# pushed to the tap by the `tap` job; this file stays unrendered on main.
class Ctx < Formula
  desc "ctx.traits reference CLI and runtime"
  homepage "https://github.com/ctx-company/traits"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.0/ctx-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "a6fd0fa0d4f9a62384311a8ecd521aff916b99a37ab8a2cffc3cdb8a7e421ba9"
    end
    on_arm do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.0/ctx-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "bb893c05f833ca7a6793a51024ee813d3b0f7c181118226ad2647f102ffdf163"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.0/ctx-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42880195316151be4de3b2dbc6418475578bd18b79f0fc165aaa9d249319c5a3"
    end
    on_arm do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.0/ctx-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a53f735370250e0e8e4789ef8339afc9ce089ab4dbcd7509d1cbb72e94ad26a3"
    end
  end

  def install
    bin.install "ctx"
  end

  test do
    system "#{bin}/ctx", "--version"
  end
end
