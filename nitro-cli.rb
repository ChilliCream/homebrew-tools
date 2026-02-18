class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.5/nitro-osx-arm64.zip"
      sha256 "ef643856fe9a845ca31487a741a390d33f77c56f4e963a6da5c9f33ea47bdda0"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.5/nitro-osx-x64.zip"
      sha256 "93d1db1175f95cff486614cdfac6576e5ef2a3906796cc963829f731ac1f3f29"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
