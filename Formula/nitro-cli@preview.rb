class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.22/nitro-osx-arm64.zip"
      sha256 "f1578553d8767e8be7886a9b3e19c846b97c7597000cf51418b33a5aad812d8c"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.22/nitro-osx-x64.zip"
      sha256 "0097e5de1f8889f26a803f8533e49f58563a3413eb3243aa6f3bff40bbef7e8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.22/nitro-linux-arm64.tar.gz"
      sha256 "666a17f4cbfab043b63b4ad20a5ae5d86f72947a2b624012eaf656a0a69cba3d"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.22/nitro-linux-x64.tar.gz"
      sha256 "462160dd0453cce6dbec2ca8b4666b484ed1a810a7760665ff287b643e405947"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
