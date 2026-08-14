# Template rendered by .github/workflows/release.yml's `formula` job, which
# fills the placeholder tokens below (double-underscore delimited) from the
# same release build that produces the ctx-v{version}-{target}.tar.gz
# archives (see modules/cli/Cargo.toml's [package.metadata.binstall] for the
# naming contract). The rendered copy is attached to the GitHub release and
# pushed to the tap by the `tap` job; this file stays unrendered on main.
class Ctx < Formula
  desc "ctx.traits reference CLI and runtime"
  homepage "https://github.com/ctx-company/traits"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.1/ctx-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "9051e5302289caa6f334c110dff61b4fd797bc3a533b35747401cc286d8a80e8"
    end
    on_arm do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.1/ctx-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "bfc625f9bddae21e7a74e255d441696c4922363fab2a503731d09434e180fda5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.1/ctx-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c9ccee3935cd44eaa4dfd167f2ec854d9ea61db62e1edb74322bc3ce6675bdc2"
    end
    on_arm do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.1/ctx-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "af0b2fa783deaff1920fa2909f9f86954a13e6db53dd77990e5c9ec99dcbc9b7"
    end
  end

  def install
    bin.install "ctx"
  end

  test do
    system "#{bin}/ctx", "--version"
  end
end
