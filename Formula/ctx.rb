# Template rendered by .github/workflows/release.yml's `formula` job, which
# fills the placeholder tokens below (double-underscore delimited) from the
# same release build that produces the ctx-v{version}-{target}.tar.gz
# archives (see modules/cli/Cargo.toml's [package.metadata.binstall] for the
# naming contract). The rendered copy is attached to the GitHub release and
# pushed to the tap by the `tap` job; this file stays unrendered on main.
class Ctx < Formula
  desc "ctx.traits reference CLI and runtime"
  homepage "https://github.com/ctx-company/traits"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ctx-company/traits/releases/download/v0.1.1/ctx-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "8c7d52c389df775966302b196ebdeb6534d0dd343e0bd08d11ee9209c1102ba7"
    end
    on_arm do
      url "https://github.com/ctx-company/traits/releases/download/v0.1.1/ctx-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "743f07793289fc4e805ab2cc8ae4a82d8ddf1cf8fb8e9df10962c6f73b51fe2c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctx-company/traits/releases/download/v0.1.1/ctx-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "957a87f3f811721966d0de26ff69c21adac33f19f27318cc9cb4a358704f78e9"
    end
    on_arm do
      url "https://github.com/ctx-company/traits/releases/download/v0.1.1/ctx-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dcd98974e8d303d0c90ef3c1c2bfc32768f5cd3e8dc3bb7f82af15edd7b9c9f4"
    end
  end

  def install
    bin.install "ctx"
  end

  test do
    system "#{bin}/ctx", "--version"
  end
end
