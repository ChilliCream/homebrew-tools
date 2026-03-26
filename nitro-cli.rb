class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.17/nitro-osx-arm64.zip"
      sha256 "c03e20a9209a49673b45406e5263c329df53c22ed5dba77634da3d6c939bd078"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.17/nitro-osx-x64.zip"
      sha256 "2d666d8a4428da362b84e04399d8265700feb5f7498b6067de082c37b8b4b596"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
