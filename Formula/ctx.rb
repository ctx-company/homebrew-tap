# Template rendered by .github/workflows/release.yml's `formula` job, which
# fills the placeholder tokens below (double-underscore delimited) from the
# same release build that produces the ctx-v{version}-{target}.tar.gz
# archives (see modules/cli/Cargo.toml's [package.metadata.binstall] for the
# naming contract). The rendered copy is attached to the GitHub release and
# pushed to the tap by the `tap` job; this file stays unrendered on main.
class Ctx < Formula
  desc "ctx.traits reference CLI and runtime"
  homepage "https://github.com/ctx-company/traits"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.2/ctx-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "aa52211ecdf5caa95a1ad3f9f115fe209eed68dc8ecc3a9d90a56ff7c98743da"
    end
    on_arm do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.2/ctx-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "c9c02c5e3625e1d52941f2019e12bf7c31242078b50aded00975d29b0c62efef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.2/ctx-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "32e53d68c2c51733921c376aa7f6a78fe505d1741bbdb9742b4104cdaf310100"
    end
    on_arm do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.2/ctx-v0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb9e47dc4aa6839d5ecc55479e74303250e19ccd8ae47af23499dd483cf1927a"
    end
  end

  def install
    bin.install "ctx"
  end

  test do
    system "#{bin}/ctx", "--version"
  end
end
