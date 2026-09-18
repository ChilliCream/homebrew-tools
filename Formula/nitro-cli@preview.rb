class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.8/nitro-osx-arm64.zip"
      sha256 "e4d7bf324311c42ef16c44ee2249d82e3d3059ee1bd28f829273b41db41bedd4"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.8/nitro-osx-x64.zip"
      sha256 "7b16392f62987810f0a2a155df458a348f31200e1c84f6763c7a06177914ea40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.8/nitro-linux-arm64.tar.gz"
      sha256 "cf4bc11d96c1af17607c93d72bc045bd1af116f851770592ba96cecdcbec7162"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.8/nitro-linux-x64.tar.gz"
      sha256 "505c459721cbccbd3cba41fc736ec14ed24e178efa0658d3f4680783bf42dcc9"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
