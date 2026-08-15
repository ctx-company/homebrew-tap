# Template rendered by .github/workflows/release.yml's `formula` job, which
# fills the placeholder tokens below (double-underscore delimited) from the
# same release build that produces the ctx-v{version}-{target}.tar.gz
# archives (see modules/cli/Cargo.toml's [package.metadata.binstall] for the
# naming contract). The rendered copy is attached to the GitHub release and
# pushed to the tap by the `tap` job; this file stays unrendered on main.
class Ctx < Formula
  desc "ctx.traits reference CLI and runtime"
  homepage "https://github.com/ctx-company/traits"
  version "0.2.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.4/ctx-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "925b187f37e58e11f022bbdb1178047e0d87289755d2a40e2bba3f7f4f30bcdd"
    end
    on_arm do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.4/ctx-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "3ae165615df1497f286ba59571b634f7f1da4d3d2a900a19034028c77c219d6a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.4/ctx-v0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ebe8cb35163698857e012cd4dfd2c8723f71a03fa2ecd47648ff27f3a7d7b0c"
    end
    on_arm do
      url "https://github.com/ctx-company/traits/releases/download/v0.2.4/ctx-v0.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b5dee9bd273ee25832cca9b828a18d4bd9f9dbc57d834c93aec97a77b498a7e2"
    end
  end

  def install
    bin.install "ctx"
  end

  test do
    system "#{bin}/ctx", "--version"
  end
end
