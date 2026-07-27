class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.0-p.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.6/nitro-osx-arm64.zip"
      sha256 "1fc9a6987771465d991c13a2e6b38d550194ca6ccb167d3d3accfb45e8a3b3c9"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.6/nitro-osx-x64.zip"
      sha256 "b11d0bca26cd0866e612f83201693b7115d40abac9e83dc783cd26a556e24e45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.6/nitro-linux-arm64.tar.gz"
      sha256 "a4b3f62ee0dc7784d956b153aa2623716b07e21334af1f02c4ce3df4d9d118b2"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.6/nitro-linux-x64.tar.gz"
      sha256 "116838afb79968d1cd0edeab241ece46748c2c26559bde693e31c50121388da0"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
