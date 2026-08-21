# Template rendered by .github/workflows/release.yml's `formula` job, which
# fills the placeholder tokens below (double-underscore delimited) from the
# same release build that produces the ctx-v{version}-{target}.tar.gz
# archives (see modules/cli/Cargo.toml's [package.metadata.binstall] for the
# naming contract). The rendered copy is attached to the GitHub release and
# pushed to the tap by the `tap` job; this file stays unrendered on main.
class Ctx < Formula
  desc "ctx.traits reference CLI and runtime"
  homepage "https://github.com/ctx-company/traits"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ctx-company/traits/releases/download/v0.3.0/ctx-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "c75c006fdc75288e0beab80100e05186bd6535f1feb6f428b947abbbbe817abb"
    end
    on_arm do
      url "https://github.com/ctx-company/traits/releases/download/v0.3.0/ctx-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "394fd56016a956d12c254a2f9d8f1378df2985a3fb4cfab36d87998a24ef70b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctx-company/traits/releases/download/v0.3.0/ctx-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3bc5e55ae08027c903472ed2a9bb2f23cb3ff87d7e9ca1536db4ce4494550170"
    end
    on_arm do
      url "https://github.com/ctx-company/traits/releases/download/v0.3.0/ctx-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b92f7efc2a07fa051a47e81f364e3c1e36f510af9bd3db2091bc24eb9c02be8"
    end
  end

  def install
    bin.install "ctx"
  end

  test do
    system "#{bin}/ctx", "--version"
  end
end
