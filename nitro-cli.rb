class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.52/nitro-osx-arm64.zip"
      sha256 "95d419a256c44bf63850c09d8fccddc961fe6cb47d05f46cc4e1a41757802e91"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-p.11.52/nitro-osx-x64.zip"
      sha256 "6da7ddc9943aa2ca0385e5b57728bbce812a9291acd393e91c4d93e52be14663"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
