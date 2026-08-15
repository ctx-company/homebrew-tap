# Template rendered by .github/workflows/release.yml's `formula` job, which
# fills the placeholder tokens below (double-underscore delimited) from the
# same release build that produces the ctx-v{version}-{target}.tar.gz
# archives (see modules/cli/Cargo.toml's [package.metadata.binstall] for the
# naming contract). The rendered copy is attached to the GitHub release and
# pushed to the tap by the `tap` job; this file stays unrendered on main.
class Ctx < Formula
  desc "ctx.traits reference CLI and runtime"
  homepage "https://github.com/ctx-company/traits"
  version "0.2.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.3/ctx-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "32ad84369845f451cded79dafb587f8beb084c983f70dd945f6e89e68f58f94d"
    end
    on_arm do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.3/ctx-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "c8ca4a67fa08da12c29a36906bec7d852606b2dd2b2d83fa6261b03513cd13bb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.3/ctx-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4cdc56dd576336159d1016765b71e2dfc89cf7d6f09964f5ea2af2aecbf4ea67"
    end
    on_arm do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.3/ctx-v0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d792816457d0d4a661b6526d61fa7282d096b81c847ed44af1a3325f179a1234"
    end
  end

  def install
    bin.install "ctx"
  end

  test do
    system "#{bin}/ctx", "--version"
  end
end
