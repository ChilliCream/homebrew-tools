class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.6/nitro-osx-arm64.zip"
      sha256 "a403220f20d8f52fb907bc5734e3b93c43189fa1557f6017d8b65c7deab034a7"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.6/nitro-osx-x64.zip"
      sha256 "302b9d05164e5027a640eb8184db2d564b1226c555a3155c22cb82c2c092c000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.6/nitro-linux-arm64.tar.gz"
      sha256 "da9e48475994d0e0b7e5006d8707317517458304ad40e77207cdb123e85b56d3"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.6/nitro-linux-x64.tar.gz"
      sha256 "8e8a0d76a71c6ed5c7bf9f65ec03fbcb233d5c5900f4543cc48117e4f81803e3"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
