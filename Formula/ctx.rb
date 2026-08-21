# Template rendered by .github/workflows/release.yml's `formula` job, which
# fills the placeholder tokens below (double-underscore delimited) from the
# same release build that produces the ctx-v{version}-{target}.tar.gz
# archives (see modules/cli/Cargo.toml's [package.metadata.binstall] for the
# naming contract). The rendered copy is attached to the GitHub release and
# pushed to the tap by the `tap` job; this file stays unrendered on main.
class Ctx < Formula
  desc "ctx.traits reference CLI and runtime"
  homepage "https://github.com/ctx-company/traits"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ctx-company/traits/releases/download/v0.4.0/ctx-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "192f944d6ca8bff53b9d4852eed440cb7b9aba07c8a91cf3f70de46fcf04bf42"
    end
    on_arm do
      url "https://github.com/ctx-company/traits/releases/download/v0.4.0/ctx-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "f9a962b151e01940520e59f72e74ee4678bd66737fc933ac02a58705b6c2490e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctx-company/traits/releases/download/v0.4.0/ctx-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78cfc17f058baa4d05fd4f9474bd47eebd3713138e579fd8e7c2537675fce1d4"
    end
    on_arm do
      url "https://github.com/ctx-company/traits/releases/download/v0.4.0/ctx-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aa305b58703ce86dce057d581fb3cad7d33eddb7e7d3ff69259c8a2efdd39380"
    end
  end

  def install
    bin.install "ctx"
  end

  test do
    system "#{bin}/ctx", "--version"
  end
end
